import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

int? getTodaysDate() {
  return DateTime.now().day;
}

int? getDay(DateTime date) {
  return date.day;
}

DateTime? dateToDateTime(DateStruct date) {
  return DateTime(date.year, date.month, date.day);
}

int? getMonth(DateTime date) {
  return date.month;
}

int? getYear(DateTime date) {
  return date.year;
}

GaitMetricsStruct gaitAnalysis(
  List<AccelerationDataStruct> accelerometerData,
  List<GyroscopeDataStruct> gyroscopeData,
  GaitMetricsStruct metrics,
) {
  // Calculate stride length
  double totalStrideLength = 0;
  int stepCount = 0;
  for (int i = 1; i < accelerometerData.length; i++) {
    double acceleration = math.sqrt(math.pow(accelerometerData[i].xAccel, 2) +
        math.pow(accelerometerData[i].yAccel, 2) +
        math.pow(accelerometerData[i].zAccel, 2));
    double prevAcceleration = math.sqrt(
        math.pow(accelerometerData[i - 1].xAccel, 2) +
            math.pow(accelerometerData[i - 1].yAccel, 2) +
            math.pow(accelerometerData[i - 1].zAccel, 2));

    double gyroRotation = math.sqrt(math.pow(gyroscopeData[i].xGyro, 2) +
        math.pow(gyroscopeData[i].yGyro, 2) +
        math.pow(gyroscopeData[i].zGyro, 2));

    // Enhanced step detection based on both accelerometer and gyroscope data
    if ((acceleration - prevAcceleration).abs() > 1.5 && gyroRotation > 0.2) {
      stepCount++;
      totalStrideLength += acceleration *
          0.1; // simplified model, using acceleration to estimate stride
    }
  }

  metrics.strideLength = stepCount > 0 ? totalStrideLength / stepCount : 0;

  // Calculate ground contact time
  double totalContactTime = 0;
  DateTime? stepStartTime;
  for (int i = 0; i < accelerometerData.length; i++) {
    double accelerationZ = accelerometerData[i].zAccel;
    double gyroRotationZ = gyroscopeData[i].zGyro;

    // Detect when the foot hits the ground based on negative Z acceleration and gyroscope's Z rotation
    if (accelerationZ < -1.0 &&
        gyroRotationZ.abs() < 0.5 &&
        stepStartTime == null) {
      stepStartTime = accelerometerData[i].timestamp;
    } else if (accelerationZ > 1.0 && stepStartTime != null) {
      totalContactTime += accelerometerData[i]
              .timestamp
              .difference(stepStartTime)
              .inMilliseconds /
          1000.0;
      stepStartTime = null;
    }
  }

  metrics?.groundContactTime = totalContactTime;

  // Calculate vertical ratio
  double totalVerticalOscillation = 0;
  stepCount = 0;

  for (int i = 1; i < accelerometerData.length; i++) {
    double prevZ = accelerometerData[i - 1].zAccel;
    double currentZ = accelerometerData[i].zAccel;
    double verticalDisplacement = (currentZ - prevZ).abs();

    double gyroRotationX = gyroscopeData[i].xGyro;

    // Use the gyroscope's rotation to verify the transition of steps
    if (verticalDisplacement > 0.2 && gyroRotationX.abs() > 0.5) {
      totalVerticalOscillation += verticalDisplacement;
      stepCount++;
    }
  }

  double avgVerticalOscillation =
      stepCount > 0 ? totalVerticalOscillation / stepCount : 0;
  double strideLength = metrics.strideLength;

  metrics.verticalRatio =
      strideLength > 0 ? avgVerticalOscillation / strideLength : 0;

  // Calculate asymmetry
  double totalLeftStepTime = 0;
  double totalRightStepTime = 0;
  int leftSteps = 0;
  int rightSteps = 0;
  DateTime? leftFootStartTime;
  DateTime? rightFootStartTime;

  for (int i = 0; i < accelerometerData.length; i++) {
    double accelerationZ = accelerometerData[i].zAccel;
    double gyroRotationZ = gyroscopeData[i].zGyro;

    // Simple asymmetry detection: Left vs Right foot based on Z-acceleration and gyroscope data
    if (accelerationZ < -1.0 && gyroRotationZ.abs() < 0.5) {
      if (i % 2 == 0) {
        if (leftFootStartTime == null) {
          leftFootStartTime = accelerometerData[i].timestamp;
        }
      } else {
        if (rightFootStartTime == null) {
          rightFootStartTime = accelerometerData[i].timestamp;
        }
      }
    }

    if (accelerationZ > 1.0 && leftFootStartTime != null) {
      totalLeftStepTime += accelerometerData[i]
              .timestamp
              .difference(leftFootStartTime)
              .inMilliseconds /
          1000.0;
      leftFootStartTime = null;
      leftSteps++;
    }
    if (accelerationZ > 1.0 && rightFootStartTime != null) {
      totalRightStepTime += accelerometerData[i]
              .timestamp
              .difference(rightFootStartTime)
              .inMilliseconds /
          1000.0;
      rightFootStartTime = null;
      rightSteps++;
    }
  }

  if (leftSteps == 0 || rightSteps == 0) {
    metrics.asymmetry = 0;
  } else {
    double leftAvgTime = totalLeftStepTime / leftSteps;
    double rightAvgTime = totalRightStepTime / rightSteps;

    metrics?.asymmetry =
        (leftAvgTime - rightAvgTime).abs() / ((leftAvgTime + rightAvgTime) / 2);
  }

  return metrics;
}
