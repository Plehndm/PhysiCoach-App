import '/components/activity/activity_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for todaysActivity.
  late FlutterFlowDynamicModels<ActivityModel> todaysActivityModels;
  // Models for mostRecentActivity.
  late FlutterFlowDynamicModels<ActivityModel> mostRecentActivityModels;
  // Models for tripleJumpActivity.
  late FlutterFlowDynamicModels<ActivityModel> tripleJumpActivityModels;
  // Models for runningActivity.
  late FlutterFlowDynamicModels<ActivityModel> runningActivityModels;
  // Models for longJumpActivity.
  late FlutterFlowDynamicModels<ActivityModel> longJumpActivityModels;

  @override
  void initState(BuildContext context) {
    todaysActivityModels = FlutterFlowDynamicModels(() => ActivityModel());
    mostRecentActivityModels = FlutterFlowDynamicModels(() => ActivityModel());
    tripleJumpActivityModels = FlutterFlowDynamicModels(() => ActivityModel());
    runningActivityModels = FlutterFlowDynamicModels(() => ActivityModel());
    longJumpActivityModels = FlutterFlowDynamicModels(() => ActivityModel());
  }

  @override
  void dispose() {
    todaysActivityModels.dispose();
    mostRecentActivityModels.dispose();
    tripleJumpActivityModels.dispose();
    runningActivityModels.dispose();
    longJumpActivityModels.dispose();
  }
}
