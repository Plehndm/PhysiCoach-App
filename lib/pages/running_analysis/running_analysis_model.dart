import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'running_analysis_widget.dart' show RunningAnalysisWidget;
import 'package:flutter/material.dart';

class RunningAnalysisModel extends FlutterFlowModel<RunningAnalysisWidget> {
  ///  Local state fields for this page.

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
  // State field(s) for Asymmetry-PageView widget.
  PageController? asymmetryPageViewController;

  int get asymmetryPageViewCurrentIndex =>
      asymmetryPageViewController != null &&
              asymmetryPageViewController!.hasClients &&
              asymmetryPageViewController!.page != null
          ? asymmetryPageViewController!.page!.round()
          : 0;
  // State field(s) for GroundContactTime-PageView widget.
  PageController? groundContactTimePageViewController;

  int get groundContactTimePageViewCurrentIndex =>
      groundContactTimePageViewController != null &&
              groundContactTimePageViewController!.hasClients &&
              groundContactTimePageViewController!.page != null
          ? groundContactTimePageViewController!.page!.round()
          : 0;
  // State field(s) for VerticalRatio-PageView widget.
  PageController? verticalRatioPageViewController;

  int get verticalRatioPageViewCurrentIndex =>
      verticalRatioPageViewController != null &&
              verticalRatioPageViewController!.hasClients &&
              verticalRatioPageViewController!.page != null
          ? verticalRatioPageViewController!.page!.round()
          : 0;
  // State field(s) for StrideLength-PageView widget.
  PageController? strideLengthPageViewController;

  int get strideLengthPageViewCurrentIndex =>
      strideLengthPageViewController != null &&
              strideLengthPageViewController!.hasClients &&
              strideLengthPageViewController!.page != null
          ? strideLengthPageViewController!.page!.round()
          : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
