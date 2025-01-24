import '/components/activity/activity_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Models for tripleJumpActivityPending.
  late FlutterFlowDynamicModels<ActivityModel> tripleJumpActivityPendingModels;
  // Models for runningActivityPending.
  late FlutterFlowDynamicModels<ActivityModel> runningActivityPendingModels;
  // Models for longJumpActivityPending.
  late FlutterFlowDynamicModels<ActivityModel> longJumpActivityPendingModels;
  // Models for tripleJumpActivityCompleted.
  late FlutterFlowDynamicModels<ActivityModel>
      tripleJumpActivityCompletedModels;
  // Models for runningActivityCompleted.
  late FlutterFlowDynamicModels<ActivityModel> runningActivityCompletedModels;
  // Models for longJumpActivityCompleted.
  late FlutterFlowDynamicModels<ActivityModel> longJumpActivityCompletedModels;

  @override
  void initState(BuildContext context) {
    tripleJumpActivityPendingModels =
        FlutterFlowDynamicModels(() => ActivityModel());
    runningActivityPendingModels =
        FlutterFlowDynamicModels(() => ActivityModel());
    longJumpActivityPendingModels =
        FlutterFlowDynamicModels(() => ActivityModel());
    tripleJumpActivityCompletedModels =
        FlutterFlowDynamicModels(() => ActivityModel());
    runningActivityCompletedModels =
        FlutterFlowDynamicModels(() => ActivityModel());
    longJumpActivityCompletedModels =
        FlutterFlowDynamicModels(() => ActivityModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    tripleJumpActivityPendingModels.dispose();
    runningActivityPendingModels.dispose();
    longJumpActivityPendingModels.dispose();
    tripleJumpActivityCompletedModels.dispose();
    runningActivityCompletedModels.dispose();
    longJumpActivityCompletedModels.dispose();
  }
}
