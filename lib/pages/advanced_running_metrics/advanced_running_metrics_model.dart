import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'advanced_running_metrics_widget.dart' show AdvancedRunningMetricsWidget;
import 'package:flutter/material.dart';

class AdvancedRunningMetricsModel
    extends FlutterFlowModel<AdvancedRunningMetricsWidget> {
  ///  Local state fields for this page.

  FeedbackEnum? asymmetryOverall = FeedbackEnum.good;

  FeedbackEnum? groundContactTimeOverall = FeedbackEnum.good;

  FeedbackEnum? verticalRatioOverall = FeedbackEnum.good;

  FeedbackEnum? strideLengthOverall = FeedbackEnum.good;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
