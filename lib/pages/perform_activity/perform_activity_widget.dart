import '';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'perform_activity_model.dart';
export 'perform_activity_model.dart';

class PerformActivityWidget extends StatefulWidget {
  const PerformActivityWidget({
    super.key,
    required this.activityDoc,
  });

  final ActivitiesRecord? activityDoc;

  static String routeName = 'performActivity';
  static String routePath = '/performActivity';

  @override
  State<PerformActivityWidget> createState() => _PerformActivityWidgetState();
}

class _PerformActivityWidgetState extends State<PerformActivityWidget> {
  late PerformActivityModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PerformActivityModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 1000));
      _model.dataCollection = InstantTimer.periodic(
        duration: Duration(milliseconds: 1000),
        callback: (timer) async {
          if (_model.isRecordingData == true) {
            await Future.wait([
              Future(() async {
                _model.accellData = await actions.getAccelerometerData(
                  AccelerationDataStruct(),
                );
              }),
              Future(() async {
                _model.gyroData = await actions.getGyroscopeData(
                  GyroscopeDataStruct(),
                );
              }),
            ]);
            FFAppState().addToAccelerationAS(_model.accellData!);
            FFAppState().addToGyroscopeAS(_model.gyroData!);
            safeSetState(() {});
            _model.gaitMetrics = await actions.gaitAnalysis(
              FFAppState().accelerationAS.toList(),
              FFAppState().gyroscopeAS.toList(),
              GaitMetricsStruct(),
            );
            FFAppState().addToGaitAnalysisAS(_model.gaitMetrics!);
            safeSetState(() {});
          }
        },
        startImmediately: true,
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    // On page dispose action.
    () async {
      _model.dataCollection?.cancel();
      FFAppState().accelerationAS = [];
      FFAppState().gyroscopeAS = [];
      FFAppState().gaitAnalysisAS = [];
      safeSetState(() {});
    }();

    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<AccelerometerDataRecord>>(
      stream: queryAccelerometerDataRecord(
        parent: widget.activityDoc?.reference,
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<AccelerometerDataRecord>
            performActivityAccelerometerDataRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final performActivityAccelerometerDataRecord =
            performActivityAccelerometerDataRecordList.isNotEmpty
                ? performActivityAccelerometerDataRecordList.first
                : null;

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
                'Perform Activity',
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
                  ],
                ),
              ],
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
              child: Padding(
                padding: EdgeInsets.all(24.0),
                child: StreamBuilder<List<GyroscopeDataRecord>>(
                  stream: queryGyroscopeDataRecord(
                    parent: widget.activityDoc?.reference,
                    singleRecord: true,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }
                    List<GyroscopeDataRecord> columnGyroscopeDataRecordList =
                        snapshot.data!;
                    // Return an empty Container when the item does not exist.
                    if (snapshot.data!.isEmpty) {
                      return Container();
                    }
                    final columnGyroscopeDataRecord =
                        columnGyroscopeDataRecordList.isNotEmpty
                            ? columnGyroscopeDataRecordList.first
                            : null;

                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Closing this page will stop data collection!',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    color: FlutterFlowTheme.of(context).error,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                  ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              valueOrDefault<String>(
                                widget.activityDoc?.title,
                                'title',
                              ).maybeHandleOverflow(
                                maxChars: 50,
                                replacement: '…',
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Text(
                              valueOrDefault<String>(
                                widget.activityDoc?.description,
                                'description',
                              ).maybeHandleOverflow(
                                maxChars: 80,
                                replacement: '…',
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                        Container(
                          width: 300.0,
                          height: 300.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primaryText,
                              width: 4.0,
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: FlutterFlowTimer(
                              initialTime: _model.timerInitialTimeMs,
                              getDisplayTime: (value) =>
                                  StopWatchTimer.getDisplayTime(value),
                              controller: _model.timerController,
                              updateStateInterval: Duration(milliseconds: 1000),
                              onChanged: (value, displayTime, shouldUpdate) {
                                _model.timerMilliseconds = value;
                                _model.timerValue = displayTime;
                                if (shouldUpdate) safeSetState(() {});
                              },
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                        Stack(
                          children: [
                            if (_model.isRecordingData)
                              Align(
                                alignment: AlignmentDirectional(1.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    _model.timerController.onStopTimer();
                                    _model.isRecordingData = false;
                                    safeSetState(() {});
                                  },
                                  text: 'Stop',
                                  options: FFButtonOptions(
                                    width: 100.0,
                                    height: 100.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    elevation: 0.0,
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(1000.0),
                                  ),
                                ),
                              ),
                            if (!_model.isRecordingData)
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    _model.timerController.onResetTimer();
                                  },
                                  text: 'Reset',
                                  options: FFButtonOptions(
                                    width: 100.0,
                                    height: 100.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    elevation: 0.0,
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(1000.0),
                                  ),
                                ),
                              ),
                            if (!_model.isRecordingData)
                              Align(
                                alignment: AlignmentDirectional(1.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    _model.timerController.onStartTimer();
                                    _model.isRecordingData = true;
                                    safeSetState(() {});
                                  },
                                  text: 'Start',
                                  options: FFButtonOptions(
                                    width: 100.0,
                                    height: 100.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    elevation: 0.0,
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(1000.0),
                                  ),
                                ),
                              ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: StreamBuilder<List<RunningDataRecord>>(
                            stream: queryRunningDataRecord(
                              queryBuilder: (runningDataRecord) =>
                                  runningDataRecord
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
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<RunningDataRecord>
                                  completeActivityButtonRunningDataRecordList =
                                  snapshot.data!;
                              // Return an empty Container when the item does not exist.
                              if (snapshot.data!.isEmpty) {
                                return Container();
                              }
                              final completeActivityButtonRunningDataRecord =
                                  completeActivityButtonRunningDataRecordList
                                          .isNotEmpty
                                      ? completeActivityButtonRunningDataRecordList
                                          .first
                                      : null;

                              return FFButtonWidget(
                                onPressed: () async {
                                  _model.dataCollection?.cancel();
                                  await Future.wait([
                                    Future(() async {
                                      await widget.activityDoc!.reference
                                          .update(createActivitiesRecordData(
                                        completed: true,
                                      ));
                                    }),
                                    Future(() async {
                                      await performActivityAccelerometerDataRecord!
                                          .reference
                                          .update({
                                        ...mapToFirestore(
                                          {
                                            'accelerations':
                                                getAccelerationDataListFirestoreData(
                                              FFAppState().accelerationAS,
                                            ),
                                          },
                                        ),
                                      });
                                    }),
                                    Future(() async {
                                      await columnGyroscopeDataRecord!.reference
                                          .update({
                                        ...mapToFirestore(
                                          {
                                            'data':
                                                getGyroscopeDataListFirestoreData(
                                              FFAppState().gyroscopeAS,
                                            ),
                                          },
                                        ),
                                      });
                                    }),
                                    Future(() async {
                                      await completeActivityButtonRunningDataRecord!
                                          .reference
                                          .update({
                                        ...mapToFirestore(
                                          {
                                            'gaitAnalysies':
                                                getGaitMetricsListFirestoreData(
                                              FFAppState().gaitAnalysisAS,
                                            ),
                                          },
                                        ),
                                      });
                                    }),
                                  ]);
                                  FFAppState().accelerationAS = [];
                                  FFAppState().gyroscopeAS = [];
                                  FFAppState().gaitAnalysisAS = [];
                                  safeSetState(() {});

                                  context.goNamed(
                                    HomeWidget.routeName,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                },
                                text: 'Complete Activity',
                                icon: Icon(
                                  Icons.check_outlined,
                                  size: 24.0,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  elevation: 0.0,
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                              );
                            },
                          ),
                        ),
                        Text(
                          'Accel: ${FFAppState().accelerationAS.length.toString()}',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        Text(
                          'Gyro: ${FFAppState().gyroscopeAS.length.toString()}',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ].divide(SizedBox(height: 15.0)),
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
