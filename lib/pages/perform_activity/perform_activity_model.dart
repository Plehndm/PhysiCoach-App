import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'perform_activity_widget.dart' show PerformActivityWidget;
import 'package:flutter/material.dart';

class PerformActivityModel extends FlutterFlowModel<PerformActivityWidget> {
  ///  Local state fields for this page.

  bool isRecordingData = false;

  RunningDataRecord? runningDataDoc;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in performActivity widget.
  RunningDataRecord? runningDataDocQuery;
  InstantTimer? dataCollection;
  // Stores action output result for [Custom Action - getAccelerometerData] action in performActivity widget.
  AccelerationDataStruct? accellData;
  // Stores action output result for [Custom Action - getGyroscopeData] action in performActivity widget.
  GyroscopeDataStruct? gyroData;
  // Stores action output result for [Custom Action - gaitAnalysis] action in performActivity widget.
  GaitMetricsStruct? gaitMetrics;
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 0;
  int timerMilliseconds = 0;
  String timerValue = StopWatchTimer.getDisplayTime(0);
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countUp));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    dataCollection?.cancel();
    timerController.dispose();
  }
}
