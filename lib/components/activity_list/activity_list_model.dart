import '/components/activity/activity_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'activity_list_widget.dart' show ActivityListWidget;
import 'package:flutter/material.dart';

class ActivityListModel extends FlutterFlowModel<ActivityListWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for activity dynamic component.
  late FlutterFlowDynamicModels<ActivityModel> activityModels;

  @override
  void initState(BuildContext context) {
    activityModels = FlutterFlowDynamicModels(() => ActivityModel());
  }

  @override
  void dispose() {
    activityModels.dispose();
  }
}
