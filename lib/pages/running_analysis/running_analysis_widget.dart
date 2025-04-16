import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'running_analysis_model.dart';
export 'running_analysis_model.dart';

class RunningAnalysisWidget extends StatefulWidget {
  const RunningAnalysisWidget({
    super.key,
    required this.activityDoc,
  });

  final ActivitiesRecord? activityDoc;

  static String routeName = 'runningAnalysis';
  static String routePath = '/runningAnalysis';

  @override
  State<RunningAnalysisWidget> createState() => _RunningAnalysisWidgetState();
}

class _RunningAnalysisWidgetState extends State<RunningAnalysisWidget> {
  late RunningAnalysisModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RunningAnalysisModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.runningDataDocQuery = await queryRunningDataRecordOnce(
        queryBuilder: (runningDataRecord) => runningDataRecord
            .where(
              'user',
              isEqualTo: currentUserReference,
            )
            .where(
              'id',
              isEqualTo: valueOrDefault<int>(
                widget.activityDoc?.id,
                0,
              ),
            ),
        singleRecord: true,
      ).then((s) => s.firstOrNull);
      _model.overallFeedbackOutput = await actions.getOverallFeedback(
        _model.runningDataDocQuery!.gaitAnalysies.toList(),
        ActivityTypes.running,
      );
      await Future.wait([
        Future(() async {
          await _model.asymmetryPageViewController?.animateToPage(
            () {
              if (_model.overallFeedbackOutput?.firstOrNull ==
                  FeedbackEnum.great) {
                return 2;
              } else if (_model.overallFeedbackOutput?.firstOrNull ==
                  FeedbackEnum.good) {
                return 1;
              } else {
                return 0;
              }
            }(),
            duration: Duration(milliseconds: 500),
            curve: Curves.ease,
          );
        }),
        Future(() async {
          await _model.groundContactTimePageViewController?.animateToPage(
            () {
              if ((_model.overallFeedbackOutput?.elementAtOrNull(1)) ==
                  FeedbackEnum.great) {
                return 2;
              } else if ((_model.overallFeedbackOutput?.elementAtOrNull(1)) ==
                  FeedbackEnum.good) {
                return 1;
              } else {
                return 0;
              }
            }(),
            duration: Duration(milliseconds: 500),
            curve: Curves.ease,
          );
        }),
        Future(() async {
          await _model.verticalRatioPageViewController?.animateToPage(
            () {
              if ((_model.overallFeedbackOutput?.elementAtOrNull(2)) ==
                  FeedbackEnum.great) {
                return 2;
              } else if ((_model.overallFeedbackOutput?.elementAtOrNull(2)) ==
                  FeedbackEnum.good) {
                return 1;
              } else {
                return 0;
              }
            }(),
            duration: Duration(milliseconds: 500),
            curve: Curves.ease,
          );
        }),
        Future(() async {
          await _model.strideLengthPageViewController?.animateToPage(
            () {
              if (_model.overallFeedbackOutput?.lastOrNull ==
                  FeedbackEnum.great) {
                return 2;
              } else if (_model.overallFeedbackOutput?.lastOrNull ==
                  FeedbackEnum.good) {
                return 1;
              } else {
                return 0;
              }
            }(),
            duration: Duration(milliseconds: 500),
            curve: Curves.ease,
          );
        }),
      ]);
      _model.runningDataDoc = _model.runningDataDocQuery;
      _model.overallFeedback =
          _model.overallFeedbackOutput!.toList().cast<FeedbackEnum>();
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, _) => [
            SliverAppBar(
              pinned: false,
              floating: true,
              snap: true,
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.safePop();
                },
              ),
              title: Text(
                'Running',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Inter',
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                    ),
              ),
              actions: [
                Stack(
                  children: [
                    if (Theme.of(context).brightness == Brightness.light)
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderRadius: 8.0,
                          buttonSize: 50.0,
                          fillColor: FlutterFlowTheme.of(context).primary,
                          icon: Icon(
                            Icons.light_mode,
                            color: FlutterFlowTheme.of(context).info,
                            size: 40.0,
                          ),
                          onPressed: () async {
                            setDarkModeSetting(context, ThemeMode.dark);
                          },
                        ),
                      ),
                    if (Theme.of(context).brightness == Brightness.dark)
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderRadius: 8.0,
                          buttonSize: 50.0,
                          fillColor: FlutterFlowTheme.of(context).primary,
                          icon: Icon(
                            Icons.dark_mode_sharp,
                            color: FlutterFlowTheme.of(context).info,
                            size: 40.0,
                          ),
                          onPressed: () async {
                            setDarkModeSetting(context, ThemeMode.light);
                          },
                        ),
                      ),
                  ],
                ),
              ],
              centerTitle: false,
              elevation: 2.0,
            )
          ],
          body: Builder(
            builder: (context) {
              return Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      FlutterFlowTheme.of(context).primaryBackground,
                      FlutterFlowTheme.of(context).secondary
                    ],
                    stops: [0.0, 1.0],
                    begin: AlignmentDirectional(0.0, -1.0),
                    end: AlignmentDirectional(0, 1.0),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Container(
                        width: 361.0,
                        height: 319.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Advanced Running Metrics',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                FlutterFlowIconButton(
                                  borderRadius: 8.0,
                                  buttonSize: 40.0,
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed(
                                      AdvancedRunningMetricsWidget.routeName,
                                      queryParameters: {
                                        'runningDataDoc': serializeParam(
                                          _model.runningDataDoc,
                                          ParamType.Document,
                                        ),
                                        'overallFeedback': serializeParam(
                                          _model.overallFeedback,
                                          ParamType.Enum,
                                          isList: true,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        'runningDataDoc': _model.runningDataDoc,
                                        kTransitionInfoKey: TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                            Align(
                              alignment: AlignmentDirectional(1.0, 0.0),
                              child: Container(
                                width: 270.0,
                                decoration: BoxDecoration(),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Improve',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    Text(
                                      'Good',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    Text(
                                      'Great',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 10.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Asymmetry',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Text(
                                        'Ground Contact\nTime',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Text(
                                        'Vertical Ratio',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Text(
                                        'Stride Length',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ].divide(SizedBox(height: 50.0)),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 220.0,
                                        height: 0.01,
                                        child: Container(
                                          width: 200.0,
                                          height: 1.0,
                                          child: Stack(
                                            children: [
                                              PageView(
                                                physics:
                                                    const NeverScrollableScrollPhysics(),
                                                controller: _model
                                                        .asymmetryPageViewController ??=
                                                    PageController(
                                                        initialPage: 1),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                children: [
                                                  Container(),
                                                  Container(),
                                                  Container(),
                                                ],
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 16.0),
                                                  child: smooth_page_indicator
                                                      .SmoothPageIndicator(
                                                    controller: _model
                                                            .asymmetryPageViewController ??=
                                                        PageController(
                                                            initialPage: 1),
                                                    count: 3,
                                                    axisDirection:
                                                        Axis.horizontal,
                                                    onDotClicked: (i) async {
                                                      await _model
                                                          .asymmetryPageViewController!
                                                          .animateToPage(
                                                        i,
                                                        duration: Duration(
                                                            milliseconds: 500),
                                                        curve: Curves.ease,
                                                      );
                                                      safeSetState(() {});
                                                    },
                                                    effect:
                                                        smooth_page_indicator
                                                            .SlideEffect(
                                                      spacing: 8.0,
                                                      radius: 8.0,
                                                      dotWidth: 70.0,
                                                      dotHeight: 8.0,
                                                      dotColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent1,
                                                      activeDotColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      paintStyle:
                                                          PaintingStyle.fill,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 220.0,
                                        height: 0.01,
                                        decoration: BoxDecoration(),
                                        child: Container(
                                          width: 200.0,
                                          height: 1.0,
                                          child: Stack(
                                            children: [
                                              PageView(
                                                physics:
                                                    const NeverScrollableScrollPhysics(),
                                                controller: _model
                                                        .groundContactTimePageViewController ??=
                                                    PageController(
                                                        initialPage: 1),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                children: [
                                                  Container(),
                                                  Container(),
                                                  Container(),
                                                ],
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 16.0),
                                                  child: smooth_page_indicator
                                                      .SmoothPageIndicator(
                                                    controller: _model
                                                            .groundContactTimePageViewController ??=
                                                        PageController(
                                                            initialPage: 1),
                                                    count: 3,
                                                    axisDirection:
                                                        Axis.horizontal,
                                                    onDotClicked: (i) async {
                                                      await _model
                                                          .groundContactTimePageViewController!
                                                          .animateToPage(
                                                        i,
                                                        duration: Duration(
                                                            milliseconds: 500),
                                                        curve: Curves.ease,
                                                      );
                                                      safeSetState(() {});
                                                    },
                                                    effect:
                                                        smooth_page_indicator
                                                            .SlideEffect(
                                                      spacing: 8.0,
                                                      radius: 8.0,
                                                      dotWidth: 70.0,
                                                      dotHeight: 8.0,
                                                      dotColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent1,
                                                      activeDotColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      paintStyle:
                                                          PaintingStyle.fill,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 220.0,
                                        height: 0.01,
                                        decoration: BoxDecoration(),
                                        child: Container(
                                          width: 200.0,
                                          height: 1.0,
                                          child: Stack(
                                            children: [
                                              PageView(
                                                physics:
                                                    const NeverScrollableScrollPhysics(),
                                                controller: _model
                                                        .verticalRatioPageViewController ??=
                                                    PageController(
                                                        initialPage: 1),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                children: [
                                                  Container(),
                                                  Container(),
                                                  Container(),
                                                ],
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 16.0),
                                                  child: smooth_page_indicator
                                                      .SmoothPageIndicator(
                                                    controller: _model
                                                            .verticalRatioPageViewController ??=
                                                        PageController(
                                                            initialPage: 1),
                                                    count: 3,
                                                    axisDirection:
                                                        Axis.horizontal,
                                                    onDotClicked: (i) async {
                                                      await _model
                                                          .verticalRatioPageViewController!
                                                          .animateToPage(
                                                        i,
                                                        duration: Duration(
                                                            milliseconds: 500),
                                                        curve: Curves.ease,
                                                      );
                                                      safeSetState(() {});
                                                    },
                                                    effect:
                                                        smooth_page_indicator
                                                            .SlideEffect(
                                                      spacing: 8.0,
                                                      radius: 8.0,
                                                      dotWidth: 70.0,
                                                      dotHeight: 8.0,
                                                      dotColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent1,
                                                      activeDotColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      paintStyle:
                                                          PaintingStyle.fill,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 220.0,
                                        height: 0.01,
                                        decoration: BoxDecoration(),
                                        child: Container(
                                          width: 200.0,
                                          height: 1.0,
                                          child: Stack(
                                            children: [
                                              PageView(
                                                physics:
                                                    const NeverScrollableScrollPhysics(),
                                                controller: _model
                                                        .strideLengthPageViewController ??=
                                                    PageController(
                                                        initialPage: 1),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                children: [
                                                  Container(),
                                                  Container(),
                                                  Container(),
                                                ],
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 16.0),
                                                  child: smooth_page_indicator
                                                      .SmoothPageIndicator(
                                                    controller: _model
                                                            .strideLengthPageViewController ??=
                                                        PageController(
                                                            initialPage: 1),
                                                    count: 3,
                                                    axisDirection:
                                                        Axis.horizontal,
                                                    onDotClicked: (i) async {
                                                      await _model
                                                          .strideLengthPageViewController!
                                                          .animateToPage(
                                                        i,
                                                        duration: Duration(
                                                            milliseconds: 500),
                                                        curve: Curves.ease,
                                                      );
                                                      safeSetState(() {});
                                                    },
                                                    effect:
                                                        smooth_page_indicator
                                                            .SlideEffect(
                                                      spacing: 8.0,
                                                      radius: 8.0,
                                                      dotWidth: 70.0,
                                                      dotHeight: 8.0,
                                                      dotColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent1,
                                                      activeDotColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      paintStyle:
                                                          PaintingStyle.fill,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 69.0)),
                                  ),
                                ].divide(SizedBox(width: 10.0)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Container(
                        width: 361.0,
                        height: 319.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(24.0),
                          border: Border.all(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
