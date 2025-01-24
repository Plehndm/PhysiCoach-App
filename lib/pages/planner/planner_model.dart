import '/components/planned_activity/planned_activity_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'planner_widget.dart' show PlannerWidget;
import 'package:flutter/material.dart';

class PlannerModel extends FlutterFlowModel<PlannerWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // Models for plannedActivity dynamic component.
  late FlutterFlowDynamicModels<PlannedActivityModel> plannedActivityModels;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    plannedActivityModels =
        FlutterFlowDynamicModels(() => PlannedActivityModel());
  }

  @override
  void dispose() {
    plannedActivityModels.dispose();
  }
}
