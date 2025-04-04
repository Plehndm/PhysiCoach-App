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

Future<List<FeedbackEnum>> getOverallFeedback(
  List<GaitMetricsStruct> gaitMetrics,
  ActivityTypes activityType,
) async {
  //-----------------------------------------Running Activity-----------------------------------------------

  if (activityType == ActivityTypes.running) {
    List<FeedbackEnum> overallRunningFeedback = [];

    //-----------------------------------------Asymmetry----------------------------------------------------

    FeedbackEnum asymOverall = FeedbackEnum.good;
    int totalGreatAsym = 0;
    int totalGoodAsym = 0;
    int totalImproveAsym = 0;
    for (int i = 0; i < gaitMetrics.length; i++) {
      // Check each gaitMetric's feedback value
      if (gaitMetrics[i].runningFeedback.asymmetryFeedback ==
          FeedbackEnum.great) {
        totalGreatAsym++;
      } else if (gaitMetrics[i].runningFeedback.asymmetryFeedback ==
          FeedbackEnum.good) {
        totalGoodAsym++;
      } else {
        totalImproveAsym++;
      }
    }

    // Assign overall asymmetry feedback
    if (totalGreatAsym >= totalGoodAsym || totalGreatAsym >= totalImproveAsym) {
      if (totalGreatAsym < totalGoodAsym) {
        asymOverall = FeedbackEnum.good;
      } else if (totalGreatAsym < totalImproveAsym) {
        asymOverall = FeedbackEnum.improve;
      } else {
        asymOverall = FeedbackEnum.great;
      }
    } else {
      if (totalGoodAsym >= totalImproveAsym) {
        asymOverall = FeedbackEnum.good;
      } else {
        asymOverall = FeedbackEnum.good;
      }
    }

    // Add overall asymmetry to overall running feedback list
    overallRunningFeedback.add(asymOverall);

    //-----------------------------------------Ground Contact Time-------------------------------------------

    FeedbackEnum gctOverall = FeedbackEnum.good;
    int totalGreatGCT = 0;
    int totalGoodGCT = 0;
    int totalImproveGCT = 0;
    for (int i = 0; i < gaitMetrics.length; i++) {
      // Check each gaitMetric's feedback value
      if (gaitMetrics[i].runningFeedback.groundContactTimeFeedback ==
          FeedbackEnum.great) {
        totalGreatGCT++;
      } else if (gaitMetrics[i].runningFeedback.groundContactTimeFeedback ==
          FeedbackEnum.good) {
        totalGoodGCT++;
      } else {
        totalImproveGCT++;
      }
    }

    // Assign overall ground contact time feedback
    if (totalGreatGCT >= totalGoodGCT || totalGreatGCT >= totalImproveGCT) {
      if (totalGreatGCT < totalGoodGCT) {
        gctOverall = FeedbackEnum.good;
      } else if (totalGreatGCT < totalImproveGCT) {
        gctOverall = FeedbackEnum.improve;
      } else {
        gctOverall = FeedbackEnum.great;
      }
    } else {
      if (totalGoodGCT >= totalImproveGCT) {
        gctOverall = FeedbackEnum.good;
      } else {
        gctOverall = FeedbackEnum.good;
      }
    }

    // Add overall ground contact time to overall running feedback list
    overallRunningFeedback.add(gctOverall);

    //-----------------------------------------Vertical Ratio------------------------------------------------

    FeedbackEnum vrOverall = FeedbackEnum.good;
    int totalGreatVR = 0;
    int totalGoodVR = 0;
    int totalImproveVR = 0;
    for (int i = 0; i < gaitMetrics.length; i++) {
      // Check each gaitMetric's feedback value
      if (gaitMetrics[i].runningFeedback.verticalRatioFeedback ==
          FeedbackEnum.great) {
        totalGreatVR++;
      } else if (gaitMetrics[i].runningFeedback.verticalRatioFeedback ==
          FeedbackEnum.good) {
        totalGoodVR++;
      } else {
        totalImproveVR++;
      }
    }

    // Assign overall vertical ratio's feedback
    if (totalGreatVR >= totalGoodVR || totalGreatVR >= totalImproveVR) {
      if (totalGreatVR < totalGoodVR) {
        vrOverall = FeedbackEnum.good;
      } else if (totalGreatVR < totalImproveVR) {
        vrOverall = FeedbackEnum.improve;
      } else {
        vrOverall = FeedbackEnum.great;
      }
    } else {
      if (totalGoodVR >= totalImproveVR) {
        vrOverall = FeedbackEnum.good;
      } else {
        vrOverall = FeedbackEnum.good;
      }
    }

    // Add overall vertical ratio to overall running feedback list
    overallRunningFeedback.add(vrOverall);

    //-----------------------------------------Stride Length-----------------------------------------------

    FeedbackEnum slOverall = FeedbackEnum.good;
    int totalGreatSL = 0;
    int totalGoodSL = 0;
    int totalImproveSL = 0;
    for (int i = 0; i < gaitMetrics.length; i++) {
      // Check each gaitMetric's feedback value
      if (gaitMetrics[i].runningFeedback.strideLengthFeedback ==
          FeedbackEnum.great) {
        totalGreatSL++;
      } else if (gaitMetrics[i].runningFeedback.strideLengthFeedback ==
          FeedbackEnum.good) {
        totalGoodSL++;
      } else {
        totalImproveSL++;
      }
    }

    // Assign overall stride length's feedback
    if (totalGreatSL >= totalGoodSL || totalGreatSL >= totalImproveSL) {
      if (totalGreatSL < totalGoodSL) {
        slOverall = FeedbackEnum.good;
      } else if (totalGreatSL < totalImproveSL) {
        slOverall = FeedbackEnum.improve;
      } else {
        slOverall = FeedbackEnum.great;
      }
    } else {
      if (totalGoodSL >= totalImproveSL) {
        slOverall = FeedbackEnum.good;
      } else {
        slOverall = FeedbackEnum.good;
      }
    }

    // Add overall stride length to overall running feedback list
    overallRunningFeedback.add(slOverall);

    return overallRunningFeedback;
  } else {
    List<FeedbackEnum> overallNullFeedback = [];
    return overallNullFeedback;
  }
}
