// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:sensors_plus/sensors_plus.dart';

Future<AccelerationDataStruct?> getAccelerometerData(
    DateTime startTime, AccelerationDataStruct? accelerationData) async {
  // Subscribe to user accelerometer events with the desired sampling rate
  final userAccelerometerEvent = userAccelerometerEventStream();

  try {
    // Listen to the stream for magnetometer events
    final UserAccelerometerEvent event = await userAccelerometerEvent.first;

    // Store data from userAccelerometer stream
    accelerationData?.xAccel = event.x;
    accelerationData?.yAccel = event.y;
    accelerationData?.zAccel = event.z;
    accelerationData?.durrationMilliSec =
        DateTime.now().difference(startTime).inMilliseconds;
    accelerationData?.timeOccurred = event.timestamp;

    return accelerationData;
  } catch (error) {
    // Handle error gracefully
    print('Error fetching UserAccelerometer data: $error');
    return null;
  }
}
