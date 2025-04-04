import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'running_analysis_widget.dart' show RunningAnalysisWidget;
import 'package:flutter/material.dart';

class RunningAnalysisModel extends FlutterFlowModel<RunningAnalysisWidget> {
  ///  Local state fields for this page.

  FeedbackEnum? asymmetryOverall = FeedbackEnum.good;

  FeedbackEnum? groundContactTimeOverall = FeedbackEnum.good;

  FeedbackEnum? verticalRatioOverall = FeedbackEnum.good;

  FeedbackEnum? strideLengthOverall = FeedbackEnum.good;

  RunningDataRecord? runningDataDoc;

  List<FeedbackEnum> overallFeedback = [];
  void addToOverallFeedback(FeedbackEnum item) => overallFeedback.add(item);
  void removeFromOverallFeedback(FeedbackEnum item) =>
      overallFeedback.remove(item);
  void removeAtIndexFromOverallFeedback(int index) =>
      overallFeedback.removeAt(index);
  void insertAtIndexInOverallFeedback(int index, FeedbackEnum item) =>
      overallFeedback.insert(index, item);
  void updateOverallFeedbackAtIndex(
          int index, Function(FeedbackEnum) updateFn) =>
      overallFeedback[index] = updateFn(overallFeedback[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in runningAnalysis widget.
  RunningDataRecord? runningDataDocQuery;
  // Stores action output result for [Custom Action - getOverallFeedback] action in runningAnalysis widget.
  List<FeedbackEnum>? overallFeedbackOutput;
  // State field(s) for PageView widget.
  PageController? pageViewController1;

  int get pageViewCurrentIndex1 => pageViewController1 != null &&
          pageViewController1!.hasClients &&
          pageViewController1!.page != null
      ? pageViewController1!.page!.round()
      : 0;
  // State field(s) for PageView widget.
  PageController? pageViewController2;

  int get pageViewCurrentIndex2 => pageViewController2 != null &&
          pageViewController2!.hasClients &&
          pageViewController2!.page != null
      ? pageViewController2!.page!.round()
      : 0;
  // State field(s) for PageView widget.
  PageController? pageViewController3;

  int get pageViewCurrentIndex3 => pageViewController3 != null &&
          pageViewController3!.hasClients &&
          pageViewController3!.page != null
      ? pageViewController3!.page!.round()
      : 0;
  // State field(s) for PageView widget.
  PageController? pageViewController4;

  int get pageViewCurrentIndex4 => pageViewController4 != null &&
          pageViewController4!.hasClients &&
          pageViewController4!.page != null
      ? pageViewController4!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
