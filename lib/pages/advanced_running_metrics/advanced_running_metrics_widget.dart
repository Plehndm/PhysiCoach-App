import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'advanced_running_metrics_model.dart';
export 'advanced_running_metrics_model.dart';

class AdvancedRunningMetricsWidget extends StatefulWidget {
  const AdvancedRunningMetricsWidget({
    super.key,
    required this.runningDataDoc,
    required this.overallFeedback,
  });

  final RunningDataRecord? runningDataDoc;
  final List<FeedbackEnum>? overallFeedback;

  static String routeName = 'advancedRunningMetrics';
  static String routePath = '/advancedRunningMetrics';

  @override
  State<AdvancedRunningMetricsWidget> createState() =>
      _AdvancedRunningMetricsWidgetState();
}

class _AdvancedRunningMetricsWidgetState
    extends State<AdvancedRunningMetricsWidget> {
  late AdvancedRunningMetricsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdvancedRunningMetricsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.asymmetryOverall = widget.overallFeedback?.firstOrNull;
      _model.groundContactTimeOverall =
          widget.overallFeedback?.elementAtOrNull(1);
      _model.verticalRatioOverall = widget.overallFeedback?.elementAtOrNull(2);
      _model.strideLengthOverall = widget.overallFeedback?.lastOrNull;
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
        appBar: AppBar(
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
              context.pop();
            },
          ),
          title: Text(
            'Advanced Running Metrics',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Inter',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: Container(
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 350.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Asymmetry',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Overall',
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  fontFamily: 'Inter',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Stack(
                                            children: [
                                              if (_model.asymmetryOverall ==
                                                  FeedbackEnum.great)
                                                Text(
                                                  'Great',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            Color(0xFF007ADC),
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              if (_model.asymmetryOverall ==
                                                  FeedbackEnum.good)
                                                Text(
                                                  'Good',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            Color(0xFF00B81B),
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              if (_model.asymmetryOverall ==
                                                  FeedbackEnum.improve)
                                                Text(
                                                  'Improve',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            Color(0xFFFF6F00),
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 10.0,
                                                height: 10.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF007ADC),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              Text(
                                                'Great',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color:
                                                              Color(0xFF007ADC),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ].divide(SizedBox(width: 5.0)),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 10.0,
                                                height: 10.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF00B81B),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              Text(
                                                'Good',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color:
                                                              Color(0xFF00B81B),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ].divide(SizedBox(width: 5.0)),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 10.0,
                                                height: 10.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFFF6F00),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              Text(
                                                'Improve',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color:
                                                              Color(0xFFFF6F00),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ].divide(SizedBox(width: 5.0)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 370.0,
                                    height: 200.0,
                                    child: FlutterFlowLineChart(
                                      data: [
                                        FFLineChartData(
                                          xData: widget
                                              .runningDataDoc!.gaitAnalysies
                                              .map((e) => e.timestamp)
                                              .toList(),
                                          yData: widget
                                              .runningDataDoc!.gaitAnalysies
                                              .map((e) => e.asymmetry)
                                              .toList(),
                                          settings: LineChartBarData(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            barWidth: 1.0,
                                            isCurved: true,
                                            preventCurveOverShooting: true,
                                          ),
                                        ),
                                        FFLineChartData(
                                          xData: widget
                                              .runningDataDoc!.gaitAnalysies
                                              .map((e) => e.timestamp)
                                              .toList()
                                              .where((e) =>
                                                  (e <=
                                                      widget
                                                          .runningDataDoc!
                                                          .gaitAnalysies
                                                          .firstOrNull!
                                                          .timestamp) ||
                                                  (e >=
                                                      widget
                                                          .runningDataDoc!
                                                          .gaitAnalysies
                                                          .lastOrNull!
                                                          .timestamp))
                                              .toList(),
                                          yData: List.generate(
                                              random_data.randomInteger(2, 2),
                                              (index) => random_data
                                                  .randomInteger(40, 40)),
                                          settings: LineChartBarData(
                                            color: Color(0xFFFF6F00),
                                            barWidth: 2.0,
                                            dotData: FlDotData(show: false),
                                          ),
                                        ),
                                        FFLineChartData(
                                          xData: widget
                                              .runningDataDoc!.gaitAnalysies
                                              .map((e) => e.timestamp)
                                              .toList()
                                              .where((e) =>
                                                  (e <=
                                                      widget
                                                          .runningDataDoc!
                                                          .gaitAnalysies
                                                          .firstOrNull!
                                                          .timestamp) ||
                                                  (e >=
                                                      widget
                                                          .runningDataDoc!
                                                          .gaitAnalysies
                                                          .lastOrNull!
                                                          .timestamp))
                                              .toList(),
                                          yData: List.generate(
                                              random_data.randomInteger(2, 2),
                                              (index) => random_data
                                                  .randomInteger(45, 45)),
                                          settings: LineChartBarData(
                                            color: Color(0xFF00B81B),
                                            barWidth: 2.0,
                                            dotData: FlDotData(show: false),
                                          ),
                                        ),
                                        FFLineChartData(
                                          xData: widget
                                              .runningDataDoc!.gaitAnalysies
                                              .map((e) => e.timestamp)
                                              .toList()
                                              .where((e) =>
                                                  (e <=
                                                      widget
                                                          .runningDataDoc!
                                                          .gaitAnalysies
                                                          .firstOrNull!
                                                          .timestamp) ||
                                                  (e >=
                                                      widget
                                                          .runningDataDoc!
                                                          .gaitAnalysies
                                                          .lastOrNull!
                                                          .timestamp))
                                              .toList(),
                                          yData: List.generate(
                                              random_data.randomInteger(2, 2),
                                              (index) => random_data
                                                  .randomInteger(50, 50)),
                                          settings: LineChartBarData(
                                            color: Color(0xFF007ADC),
                                            barWidth: 2.0,
                                            dotData: FlDotData(show: false),
                                          ),
                                        )
                                      ],
                                      chartStylingInfo: ChartStylingInfo(
                                        enableTooltip: true,
                                        tooltipBackgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        backgroundColor: Color(0x00FFFFFF),
                                        showGrid: true,
                                        showBorder: false,
                                      ),
                                      axisBounds: AxisBounds(),
                                      xAxisLabelInfo: AxisLabelInfo(
                                        title: 'time',
                                        titleTextStyle: TextStyle(
                                          fontSize: 14.0,
                                        ),
                                        reservedSize: 32.0,
                                      ),
                                      yAxisLabelInfo: AxisLabelInfo(
                                        title: 'percent',
                                        titleTextStyle: TextStyle(
                                          fontSize: 14.0,
                                        ),
                                        reservedSize: 40.0,
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Ground Contact Time',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Overall',
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  fontFamily: 'Inter',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Stack(
                                            children: [
                                              if (_model
                                                      .groundContactTimeOverall ==
                                                  FeedbackEnum.great)
                                                Text(
                                                  'Great',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            Color(0xFF007ADC),
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              if (_model
                                                      .groundContactTimeOverall ==
                                                  FeedbackEnum.good)
                                                Text(
                                                  'Good',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            Color(0xFF00B81B),
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              if (_model
                                                      .groundContactTimeOverall ==
                                                  FeedbackEnum.improve)
                                                Text(
                                                  'Improve',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            Color(0xFFFF6F00),
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 10.0,
                                                height: 10.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF007ADC),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              Text(
                                                'Great',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color:
                                                              Color(0xFF007ADC),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ].divide(SizedBox(width: 5.0)),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 10.0,
                                                height: 10.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF00B81B),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              Text(
                                                'Good',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color:
                                                              Color(0xFF00B81B),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ].divide(SizedBox(width: 5.0)),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 10.0,
                                                height: 10.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFFF6F00),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              Text(
                                                'Improve',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color:
                                                              Color(0xFFFF6F00),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ].divide(SizedBox(width: 5.0)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 370.0,
                                    height: 200.0,
                                    child: FlutterFlowLineChart(
                                      data: [
                                        FFLineChartData(
                                          xData: widget
                                              .runningDataDoc!.gaitAnalysies
                                              .map((e) => e.timestamp)
                                              .toList(),
                                          yData: widget
                                              .runningDataDoc!.gaitAnalysies
                                              .map((e) => e.groundContactTime)
                                              .toList(),
                                          settings: LineChartBarData(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            barWidth: 1.0,
                                            isCurved: true,
                                            preventCurveOverShooting: true,
                                          ),
                                        ),
                                        FFLineChartData(
                                          xData: widget
                                              .runningDataDoc!.gaitAnalysies
                                              .map((e) => e.timestamp)
                                              .toList()
                                              .where((e) =>
                                                  (e <=
                                                      widget
                                                          .runningDataDoc!
                                                          .gaitAnalysies
                                                          .firstOrNull!
                                                          .timestamp) ||
                                                  (e >=
                                                      widget
                                                          .runningDataDoc!
                                                          .gaitAnalysies
                                                          .lastOrNull!
                                                          .timestamp))
                                              .toList(),
                                          yData: List.generate(
                                              random_data.randomInteger(2, 2),
                                              (index) => random_data
                                                  .randomInteger(210, 210)),
                                          settings: LineChartBarData(
                                            color: Color(0xFFFF6F00),
                                            barWidth: 2.0,
                                            dotData: FlDotData(show: false),
                                          ),
                                        ),
                                        FFLineChartData(
                                          xData: widget
                                              .runningDataDoc!.gaitAnalysies
                                              .map((e) => e.timestamp)
                                              .toList()
                                              .where((e) =>
                                                  (e <=
                                                      widget
                                                          .runningDataDoc!
                                                          .gaitAnalysies
                                                          .firstOrNull!
                                                          .timestamp) ||
                                                  (e >=
                                                      widget
                                                          .runningDataDoc!
                                                          .gaitAnalysies
                                                          .lastOrNull!
                                                          .timestamp))
                                              .toList(),
                                          yData: List.generate(
                                              random_data.randomInteger(2, 2),
                                              (index) => random_data
                                                  .randomInteger(200, 200)),
                                          settings: LineChartBarData(
                                            color: Color(0xFF00B81B),
                                            barWidth: 2.0,
                                            dotData: FlDotData(show: false),
                                          ),
                                        ),
                                        FFLineChartData(
                                          xData: widget
                                              .runningDataDoc!.gaitAnalysies
                                              .map((e) => e.timestamp)
                                              .toList()
                                              .where((e) =>
                                                  (e <=
                                                      widget
                                                          .runningDataDoc!
                                                          .gaitAnalysies
                                                          .firstOrNull!
                                                          .timestamp) ||
                                                  (e >=
                                                      widget
                                                          .runningDataDoc!
                                                          .gaitAnalysies
                                                          .lastOrNull!
                                                          .timestamp))
                                              .toList(),
                                          yData: List.generate(
                                              random_data.randomInteger(2, 2),
                                              (index) => random_data
                                                  .randomInteger(190, 190)),
                                          settings: LineChartBarData(
                                            color: Color(0xFF007ADC),
                                            barWidth: 2.0,
                                            dotData: FlDotData(show: false),
                                          ),
                                        )
                                      ],
                                      chartStylingInfo: ChartStylingInfo(
                                        enableTooltip: true,
                                        tooltipBackgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        backgroundColor: Color(0x00FFFFFF),
                                        showGrid: true,
                                        showBorder: false,
                                      ),
                                      axisBounds: AxisBounds(),
                                      xAxisLabelInfo: AxisLabelInfo(
                                        title: 'time',
                                        titleTextStyle: TextStyle(
                                          fontSize: 14.0,
                                        ),
                                        reservedSize: 32.0,
                                      ),
                                      yAxisLabelInfo: AxisLabelInfo(
                                        title: 'ms',
                                        titleTextStyle: TextStyle(
                                          fontSize: 14.0,
                                        ),
                                        reservedSize: 40.0,
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Vertical Ratio',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Overall',
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  fontFamily: 'Inter',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Stack(
                                            children: [
                                              if (_model.verticalRatioOverall ==
                                                  FeedbackEnum.great)
                                                Text(
                                                  'Great',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            Color(0xFF007ADC),
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              if (_model.verticalRatioOverall ==
                                                  FeedbackEnum.good)
                                                Text(
                                                  'Good',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            Color(0xFF00B81B),
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              if (_model.verticalRatioOverall ==
                                                  FeedbackEnum.improve)
                                                Text(
                                                  'Improve',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            Color(0xFFFF6F00),
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 10.0,
                                                height: 10.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF007ADC),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              Text(
                                                'Great',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color:
                                                              Color(0xFF007ADC),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ].divide(SizedBox(width: 5.0)),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 10.0,
                                                height: 10.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF00B81B),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              Text(
                                                'Good',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color:
                                                              Color(0xFF00B81B),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ].divide(SizedBox(width: 5.0)),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 10.0,
                                                height: 10.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFFF6F00),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              Text(
                                                'Improve',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color:
                                                              Color(0xFFFF6F00),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ].divide(SizedBox(width: 5.0)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 370.0,
                                    height: 200.0,
                                    child: FlutterFlowLineChart(
                                      data: [
                                        FFLineChartData(
                                          xData: widget
                                              .runningDataDoc!.gaitAnalysies
                                              .map((e) => e.timestamp)
                                              .toList(),
                                          yData: widget
                                              .runningDataDoc!.gaitAnalysies
                                              .map((e) => e.verticalRatio)
                                              .toList(),
                                          settings: LineChartBarData(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            barWidth: 1.0,
                                            isCurved: true,
                                            preventCurveOverShooting: true,
                                          ),
                                        ),
                                        FFLineChartData(
                                          xData: widget
                                              .runningDataDoc!.gaitAnalysies
                                              .map((e) => e.timestamp)
                                              .toList()
                                              .where((e) =>
                                                  (e <=
                                                      widget
                                                          .runningDataDoc!
                                                          .gaitAnalysies
                                                          .firstOrNull!
                                                          .timestamp) ||
                                                  (e >=
                                                      widget
                                                          .runningDataDoc!
                                                          .gaitAnalysies
                                                          .lastOrNull!
                                                          .timestamp))
                                              .toList(),
                                          yData: List.generate(
                                              random_data.randomInteger(2, 2),
                                              (index) => random_data
                                                  .randomInteger(12, 12)),
                                          settings: LineChartBarData(
                                            color: Color(0xFFFF6F00),
                                            barWidth: 2.0,
                                            dotData: FlDotData(show: false),
                                          ),
                                        ),
                                        FFLineChartData(
                                          xData: widget
                                              .runningDataDoc!.gaitAnalysies
                                              .map((e) => e.timestamp)
                                              .toList()
                                              .where((e) =>
                                                  (e <=
                                                      widget
                                                          .runningDataDoc!
                                                          .gaitAnalysies
                                                          .firstOrNull!
                                                          .timestamp) ||
                                                  (e >=
                                                      widget
                                                          .runningDataDoc!
                                                          .gaitAnalysies
                                                          .lastOrNull!
                                                          .timestamp))
                                              .toList(),
                                          yData: List.generate(
                                              random_data.randomInteger(2, 2),
                                              (index) => random_data
                                                  .randomInteger(10, 10)),
                                          settings: LineChartBarData(
                                            color: Color(0xFF00B81B),
                                            barWidth: 2.0,
                                            dotData: FlDotData(show: false),
                                          ),
                                        ),
                                        FFLineChartData(
                                          xData: widget
                                              .runningDataDoc!.gaitAnalysies
                                              .map((e) => e.timestamp)
                                              .toList()
                                              .where((e) =>
                                                  (e <=
                                                      widget
                                                          .runningDataDoc!
                                                          .gaitAnalysies
                                                          .firstOrNull!
                                                          .timestamp) ||
                                                  (e >=
                                                      widget
                                                          .runningDataDoc!
                                                          .gaitAnalysies
                                                          .lastOrNull!
                                                          .timestamp))
                                              .toList(),
                                          yData: List.generate(
                                              random_data.randomInteger(2, 2),
                                              (index) => random_data
                                                  .randomInteger(8, 8)),
                                          settings: LineChartBarData(
                                            color: Color(0xFF007ADC),
                                            barWidth: 2.0,
                                            dotData: FlDotData(show: false),
                                          ),
                                        )
                                      ],
                                      chartStylingInfo: ChartStylingInfo(
                                        enableTooltip: true,
                                        tooltipBackgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        backgroundColor: Color(0x00FFFFFF),
                                        showGrid: true,
                                        showBorder: false,
                                      ),
                                      axisBounds: AxisBounds(),
                                      xAxisLabelInfo: AxisLabelInfo(
                                        title: 'time',
                                        titleTextStyle: TextStyle(
                                          fontSize: 14.0,
                                        ),
                                        reservedSize: 32.0,
                                      ),
                                      yAxisLabelInfo: AxisLabelInfo(
                                        title: 'percent',
                                        titleTextStyle: TextStyle(
                                          fontSize: 14.0,
                                        ),
                                        reservedSize: 40.0,
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Stride Length',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Overall',
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  fontFamily: 'Inter',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Stack(
                                            children: [
                                              if (_model.strideLengthOverall ==
                                                  FeedbackEnum.great)
                                                Text(
                                                  'Great',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            Color(0xFF007ADC),
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              if (_model.strideLengthOverall ==
                                                  FeedbackEnum.good)
                                                Text(
                                                  'Good',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            Color(0xFF00B81B),
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              if (_model.strideLengthOverall ==
                                                  FeedbackEnum.improve)
                                                Text(
                                                  'Improve',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            Color(0xFFFF6F00),
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 10.0,
                                                height: 10.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF007ADC),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              Text(
                                                'Great',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color:
                                                              Color(0xFF007ADC),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ].divide(SizedBox(width: 5.0)),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 10.0,
                                                height: 10.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF00B81B),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              Text(
                                                'Good',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color:
                                                              Color(0xFF00B81B),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ].divide(SizedBox(width: 5.0)),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 10.0,
                                                height: 10.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFFF6F00),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              Text(
                                                'Improve',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color:
                                                              Color(0xFFFF6F00),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ].divide(SizedBox(width: 5.0)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 370.0,
                                    height: 200.0,
                                    child: FlutterFlowLineChart(
                                      data: [
                                        FFLineChartData(
                                          xData: widget
                                              .runningDataDoc!.gaitAnalysies
                                              .map((e) => e.timestamp)
                                              .toList(),
                                          yData: widget
                                              .runningDataDoc!.gaitAnalysies
                                              .map((e) => e.strideLength)
                                              .toList(),
                                          settings: LineChartBarData(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            barWidth: 1.0,
                                            isCurved: true,
                                            preventCurveOverShooting: true,
                                          ),
                                        ),
                                        FFLineChartData(
                                          xData: widget
                                              .runningDataDoc!.gaitAnalysies
                                              .map((e) => e.timestamp)
                                              .toList()
                                              .where((e) =>
                                                  (e <=
                                                      widget
                                                          .runningDataDoc!
                                                          .gaitAnalysies
                                                          .firstOrNull!
                                                          .timestamp) ||
                                                  (e >=
                                                      widget
                                                          .runningDataDoc!
                                                          .gaitAnalysies
                                                          .lastOrNull!
                                                          .timestamp))
                                              .toList(),
                                          yData: List.generate(
                                              random_data.randomInteger(2, 2),
                                              (index) => random_data
                                                  .randomInteger(24, 24)),
                                          settings: LineChartBarData(
                                            color: Color(0xFFFF6F00),
                                            barWidth: 2.0,
                                            dotData: FlDotData(show: false),
                                          ),
                                        ),
                                        FFLineChartData(
                                          xData: widget
                                              .runningDataDoc!.gaitAnalysies
                                              .map((e) => e.timestamp)
                                              .toList()
                                              .where((e) =>
                                                  (e <=
                                                      widget
                                                          .runningDataDoc!
                                                          .gaitAnalysies
                                                          .firstOrNull!
                                                          .timestamp) ||
                                                  (e >=
                                                      widget
                                                          .runningDataDoc!
                                                          .gaitAnalysies
                                                          .lastOrNull!
                                                          .timestamp))
                                              .toList(),
                                          yData: List.generate(
                                              random_data.randomInteger(2, 2),
                                              (index) => random_data
                                                  .randomInteger(29, 29)),
                                          settings: LineChartBarData(
                                            color: Color(0xFF00B81B),
                                            barWidth: 2.0,
                                            dotData: FlDotData(show: false),
                                          ),
                                        ),
                                        FFLineChartData(
                                          xData: widget
                                              .runningDataDoc!.gaitAnalysies
                                              .map((e) => e.timestamp)
                                              .toList()
                                              .where((e) =>
                                                  (e <=
                                                      widget
                                                          .runningDataDoc!
                                                          .gaitAnalysies
                                                          .firstOrNull!
                                                          .timestamp) ||
                                                  (e >=
                                                      widget
                                                          .runningDataDoc!
                                                          .gaitAnalysies
                                                          .lastOrNull!
                                                          .timestamp))
                                              .toList(),
                                          yData: List.generate(
                                              random_data.randomInteger(2, 2),
                                              (index) => random_data
                                                  .randomInteger(34, 34)),
                                          settings: LineChartBarData(
                                            color: Color(0xFF007ADC),
                                            barWidth: 2.0,
                                            dotData: FlDotData(show: false),
                                          ),
                                        )
                                      ],
                                      chartStylingInfo: ChartStylingInfo(
                                        enableTooltip: true,
                                        tooltipBackgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        backgroundColor: Color(0x00FFFFFF),
                                        showGrid: true,
                                        showBorder: false,
                                      ),
                                      axisBounds: AxisBounds(),
                                      xAxisLabelInfo: AxisLabelInfo(
                                        title: 'time',
                                        titleTextStyle: TextStyle(
                                          fontSize: 14.0,
                                        ),
                                        reservedSize: 32.0,
                                      ),
                                      yAxisLabelInfo: AxisLabelInfo(
                                        title: 'meters',
                                        titleTextStyle: TextStyle(
                                          fontSize: 14.0,
                                        ),
                                        reservedSize: 40.0,
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                            ),
                          ],
                        ),
                      ]
                          .divide(SizedBox(height: 10.0))
                          .around(SizedBox(height: 10.0)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
