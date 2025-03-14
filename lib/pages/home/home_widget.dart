import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/components/activity/activity_widget.dart';
import '/components/activity_direct/activity_direct_widget.dart';
import '/components/add_activity/add_activity_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  static String routeName = 'home';
  static String routePath = '/home';

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> with TickerProviderStateMixin {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('addActivityFAB pressed ...');
          },
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          elevation: 0.0,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primary,
              shape: BoxShape.circle,
              border: Border.all(
                color: FlutterFlowTheme.of(context).primaryText,
                width: 1.0,
              ),
            ),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                await showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) {
                    return GestureDetector(
                      onTap: () {
                        FocusScope.of(context).unfocus();
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      child: Padding(
                        padding: MediaQuery.viewInsetsOf(context),
                        child: AddActivityWidget(),
                      ),
                    );
                  },
                ).then((value) => safeSetState(() {}));
              },
              child: Icon(
                Icons.add_rounded,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 30.0,
              ),
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Home',
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
        ),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
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
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Activity List',
                        style:
                            FlutterFlowTheme.of(context).headlineLarge.override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                      ),
                      Container(
                        height: 535.13,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment(0.0, 0),
                                child: FlutterFlowButtonTabBar(
                                  useToggleButtonStyle: true,
                                  isScrollable: true,
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                  unselectedLabelStyle: TextStyle(),
                                  labelColor:
                                      FlutterFlowTheme.of(context).primary,
                                  unselectedLabelColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  backgroundColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  unselectedBackgroundColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  borderColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  borderWidth: 2.0,
                                  borderRadius: 12.0,
                                  elevation: 0.0,
                                  labelPadding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  tabs: [
                                    Tab(
                                      text: 'Pending',
                                    ),
                                    Tab(
                                      text: 'Completed',
                                    ),
                                  ],
                                  controller: _model.tabBarController,
                                  onTap: (i) async {
                                    [() async {}, () async {}][i]();
                                  },
                                ),
                              ),
                              Expanded(
                                child: TabBarView(
                                  controller: _model.tabBarController,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            height: 125.0,
                                            child: Stack(
                                              children: [
                                                Container(
                                                  width: double.infinity,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(),
                                                  child: Text(
                                                    'Triple Jump',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 25.0, 0.0, 0.0),
                                                  child: StreamBuilder<
                                                      List<ActivitiesRecord>>(
                                                    stream:
                                                        queryActivitiesRecord(
                                                      queryBuilder:
                                                          (activitiesRecord) =>
                                                              activitiesRecord
                                                                  .where(
                                                                    'user',
                                                                    isEqualTo:
                                                                        currentUserReference,
                                                                  )
                                                                  .where(
                                                                    'type',
                                                                    isEqualTo: ActivityTypes
                                                                        .tripleJump
                                                                        .serialize(),
                                                                  )
                                                                  .where(
                                                                    'completed',
                                                                    isEqualTo:
                                                                        false,
                                                                  ),
                                                      limit: 20,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  AlwaysStoppedAnimation<
                                                                      Color>(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<ActivitiesRecord>
                                                          listViewActivitiesRecordList =
                                                          snapshot.data!;

                                                      return ListView.separated(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        primary: false,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        itemCount:
                                                            listViewActivitiesRecordList
                                                                .length,
                                                        separatorBuilder:
                                                            (_, __) => SizedBox(
                                                                width: 10.0),
                                                        itemBuilder: (context,
                                                            listViewIndex) {
                                                          final listViewActivitiesRecord =
                                                              listViewActivitiesRecordList[
                                                                  listViewIndex];
                                                          return InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              await showModalBottomSheet(
                                                                isScrollControlled:
                                                                    true,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) {
                                                                  return GestureDetector(
                                                                    onTap: () {
                                                                      FocusScope.of(
                                                                              context)
                                                                          .unfocus();
                                                                      FocusManager
                                                                          .instance
                                                                          .primaryFocus
                                                                          ?.unfocus();
                                                                    },
                                                                    child:
                                                                        Padding(
                                                                      padding: MediaQuery
                                                                          .viewInsetsOf(
                                                                              context),
                                                                      child:
                                                                          ActivityDirectWidget(
                                                                        activityDoc:
                                                                            listViewActivitiesRecord,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              ).then((value) =>
                                                                  safeSetState(
                                                                      () {}));
                                                            },
                                                            child:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .tripleJumpActivityPendingModels
                                                                  .getModel(
                                                                listViewIndex
                                                                    .toString(),
                                                                listViewIndex,
                                                              ),
                                                              updateCallback: () =>
                                                                  safeSetState(
                                                                      () {}),
                                                              child:
                                                                  ActivityWidget(
                                                                key: Key(
                                                                  'Keykng_${listViewIndex.toString()}',
                                                                ),
                                                                activitiesDoc:
                                                                    listViewActivitiesRecord,
                                                                checkAction:
                                                                    () async {
                                                                  await listViewActivitiesRecord
                                                                      .reference
                                                                      .update(
                                                                          createActivitiesRecordData(
                                                                    completed:
                                                                        true,
                                                                  ));
                                                                },
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 125.0,
                                            child: Stack(
                                              children: [
                                                Container(
                                                  width: double.infinity,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(),
                                                  child: Text(
                                                    'Running',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 25.0, 0.0, 0.0),
                                                  child: StreamBuilder<
                                                      List<ActivitiesRecord>>(
                                                    stream:
                                                        queryActivitiesRecord(
                                                      queryBuilder:
                                                          (activitiesRecord) =>
                                                              activitiesRecord
                                                                  .where(
                                                                    'user',
                                                                    isEqualTo:
                                                                        currentUserReference,
                                                                  )
                                                                  .where(
                                                                    'type',
                                                                    isEqualTo: ActivityTypes
                                                                        .running
                                                                        .serialize(),
                                                                  )
                                                                  .where(
                                                                    'completed',
                                                                    isEqualTo:
                                                                        false,
                                                                  ),
                                                      limit: 20,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  AlwaysStoppedAnimation<
                                                                      Color>(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<ActivitiesRecord>
                                                          listViewActivitiesRecordList =
                                                          snapshot.data!;

                                                      return ListView.separated(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        primary: false,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        itemCount:
                                                            listViewActivitiesRecordList
                                                                .length,
                                                        separatorBuilder:
                                                            (_, __) => SizedBox(
                                                                width: 10.0),
                                                        itemBuilder: (context,
                                                            listViewIndex) {
                                                          final listViewActivitiesRecord =
                                                              listViewActivitiesRecordList[
                                                                  listViewIndex];
                                                          return InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              await showModalBottomSheet(
                                                                isScrollControlled:
                                                                    true,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) {
                                                                  return GestureDetector(
                                                                    onTap: () {
                                                                      FocusScope.of(
                                                                              context)
                                                                          .unfocus();
                                                                      FocusManager
                                                                          .instance
                                                                          .primaryFocus
                                                                          ?.unfocus();
                                                                    },
                                                                    child:
                                                                        Padding(
                                                                      padding: MediaQuery
                                                                          .viewInsetsOf(
                                                                              context),
                                                                      child:
                                                                          ActivityDirectWidget(
                                                                        activityDoc:
                                                                            listViewActivitiesRecord,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              ).then((value) =>
                                                                  safeSetState(
                                                                      () {}));
                                                            },
                                                            child:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .runningActivityPendingModels
                                                                  .getModel(
                                                                listViewIndex
                                                                    .toString(),
                                                                listViewIndex,
                                                              ),
                                                              updateCallback: () =>
                                                                  safeSetState(
                                                                      () {}),
                                                              child:
                                                                  ActivityWidget(
                                                                key: Key(
                                                                  'Key7db_${listViewIndex.toString()}',
                                                                ),
                                                                activitiesDoc:
                                                                    listViewActivitiesRecord,
                                                                checkAction:
                                                                    () async {
                                                                  await listViewActivitiesRecord
                                                                      .reference
                                                                      .update(
                                                                          createActivitiesRecordData(
                                                                    completed:
                                                                        true,
                                                                  ));
                                                                },
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 125.0,
                                            child: Stack(
                                              children: [
                                                Container(
                                                  width: double.infinity,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(),
                                                  child: Text(
                                                    'Long Jump',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 25.0, 0.0, 0.0),
                                                  child: StreamBuilder<
                                                      List<ActivitiesRecord>>(
                                                    stream:
                                                        queryActivitiesRecord(
                                                      queryBuilder:
                                                          (activitiesRecord) =>
                                                              activitiesRecord
                                                                  .where(
                                                                    'user',
                                                                    isEqualTo:
                                                                        currentUserReference,
                                                                  )
                                                                  .where(
                                                                    'type',
                                                                    isEqualTo: ActivityTypes
                                                                        .longJump
                                                                        .serialize(),
                                                                  )
                                                                  .where(
                                                                    'completed',
                                                                    isEqualTo:
                                                                        false,
                                                                  ),
                                                      limit: 20,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  AlwaysStoppedAnimation<
                                                                      Color>(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<ActivitiesRecord>
                                                          listViewActivitiesRecordList =
                                                          snapshot.data!;

                                                      return ListView.separated(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        primary: false,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        itemCount:
                                                            listViewActivitiesRecordList
                                                                .length,
                                                        separatorBuilder:
                                                            (_, __) => SizedBox(
                                                                width: 10.0),
                                                        itemBuilder: (context,
                                                            listViewIndex) {
                                                          final listViewActivitiesRecord =
                                                              listViewActivitiesRecordList[
                                                                  listViewIndex];
                                                          return InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              await showModalBottomSheet(
                                                                isScrollControlled:
                                                                    true,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) {
                                                                  return GestureDetector(
                                                                    onTap: () {
                                                                      FocusScope.of(
                                                                              context)
                                                                          .unfocus();
                                                                      FocusManager
                                                                          .instance
                                                                          .primaryFocus
                                                                          ?.unfocus();
                                                                    },
                                                                    child:
                                                                        Padding(
                                                                      padding: MediaQuery
                                                                          .viewInsetsOf(
                                                                              context),
                                                                      child:
                                                                          ActivityDirectWidget(
                                                                        activityDoc:
                                                                            listViewActivitiesRecord,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              ).then((value) =>
                                                                  safeSetState(
                                                                      () {}));
                                                            },
                                                            child:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .longJumpActivityPendingModels
                                                                  .getModel(
                                                                listViewIndex
                                                                    .toString(),
                                                                listViewIndex,
                                                              ),
                                                              updateCallback: () =>
                                                                  safeSetState(
                                                                      () {}),
                                                              child:
                                                                  ActivityWidget(
                                                                key: Key(
                                                                  'Keyqh5_${listViewIndex.toString()}',
                                                                ),
                                                                activitiesDoc:
                                                                    listViewActivitiesRecord,
                                                                checkAction:
                                                                    () async {
                                                                  await listViewActivitiesRecord
                                                                      .reference
                                                                      .update(
                                                                          createActivitiesRecordData(
                                                                    completed:
                                                                        true,
                                                                  ));
                                                                },
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ]
                                            .divide(SizedBox(height: 20.0))
                                            .around(SizedBox(height: 20.0)),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            height: 125.0,
                                            child: Stack(
                                              children: [
                                                Container(
                                                  width: double.infinity,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(),
                                                  child: Text(
                                                    'Triple Jump',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 25.0, 0.0, 0.0),
                                                  child: StreamBuilder<
                                                      List<ActivitiesRecord>>(
                                                    stream:
                                                        queryActivitiesRecord(
                                                      queryBuilder:
                                                          (activitiesRecord) =>
                                                              activitiesRecord
                                                                  .where(
                                                                    'user',
                                                                    isEqualTo:
                                                                        currentUserReference,
                                                                  )
                                                                  .where(
                                                                    'type',
                                                                    isEqualTo: ActivityTypes
                                                                        .tripleJump
                                                                        .serialize(),
                                                                  )
                                                                  .where(
                                                                    'completed',
                                                                    isEqualTo:
                                                                        true,
                                                                  ),
                                                      limit: 20,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  AlwaysStoppedAnimation<
                                                                      Color>(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<ActivitiesRecord>
                                                          listViewActivitiesRecordList =
                                                          snapshot.data!;

                                                      return ListView.separated(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        primary: false,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        itemCount:
                                                            listViewActivitiesRecordList
                                                                .length,
                                                        separatorBuilder:
                                                            (_, __) => SizedBox(
                                                                width: 10.0),
                                                        itemBuilder: (context,
                                                            listViewIndex) {
                                                          final listViewActivitiesRecord =
                                                              listViewActivitiesRecordList[
                                                                  listViewIndex];
                                                          return InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              await showModalBottomSheet(
                                                                isScrollControlled:
                                                                    true,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) {
                                                                  return GestureDetector(
                                                                    onTap: () {
                                                                      FocusScope.of(
                                                                              context)
                                                                          .unfocus();
                                                                      FocusManager
                                                                          .instance
                                                                          .primaryFocus
                                                                          ?.unfocus();
                                                                    },
                                                                    child:
                                                                        Padding(
                                                                      padding: MediaQuery
                                                                          .viewInsetsOf(
                                                                              context),
                                                                      child:
                                                                          ActivityDirectWidget(
                                                                        activityDoc:
                                                                            listViewActivitiesRecord,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              ).then((value) =>
                                                                  safeSetState(
                                                                      () {}));
                                                            },
                                                            child:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .tripleJumpActivityCompletedModels
                                                                  .getModel(
                                                                listViewIndex
                                                                    .toString(),
                                                                listViewIndex,
                                                              ),
                                                              updateCallback: () =>
                                                                  safeSetState(
                                                                      () {}),
                                                              child:
                                                                  ActivityWidget(
                                                                key: Key(
                                                                  'Keyef8_${listViewIndex.toString()}',
                                                                ),
                                                                activitiesDoc:
                                                                    listViewActivitiesRecord,
                                                                checkAction:
                                                                    () async {
                                                                  await listViewActivitiesRecord
                                                                      .reference
                                                                      .update(
                                                                          createActivitiesRecordData(
                                                                    completed:
                                                                        false,
                                                                  ));
                                                                },
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 125.0,
                                            child: Stack(
                                              children: [
                                                Container(
                                                  width: double.infinity,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(),
                                                  child: Text(
                                                    'Running',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 25.0, 0.0, 0.0),
                                                  child: StreamBuilder<
                                                      List<ActivitiesRecord>>(
                                                    stream:
                                                        queryActivitiesRecord(
                                                      queryBuilder:
                                                          (activitiesRecord) =>
                                                              activitiesRecord
                                                                  .where(
                                                                    'user',
                                                                    isEqualTo:
                                                                        currentUserReference,
                                                                  )
                                                                  .where(
                                                                    'type',
                                                                    isEqualTo: ActivityTypes
                                                                        .running
                                                                        .serialize(),
                                                                  )
                                                                  .where(
                                                                    'completed',
                                                                    isEqualTo:
                                                                        true,
                                                                  ),
                                                      limit: 20,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  AlwaysStoppedAnimation<
                                                                      Color>(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<ActivitiesRecord>
                                                          listViewActivitiesRecordList =
                                                          snapshot.data!;

                                                      return ListView.separated(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        primary: false,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        itemCount:
                                                            listViewActivitiesRecordList
                                                                .length,
                                                        separatorBuilder:
                                                            (_, __) => SizedBox(
                                                                width: 10.0),
                                                        itemBuilder: (context,
                                                            listViewIndex) {
                                                          final listViewActivitiesRecord =
                                                              listViewActivitiesRecordList[
                                                                  listViewIndex];
                                                          return InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              await showModalBottomSheet(
                                                                isScrollControlled:
                                                                    true,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) {
                                                                  return GestureDetector(
                                                                    onTap: () {
                                                                      FocusScope.of(
                                                                              context)
                                                                          .unfocus();
                                                                      FocusManager
                                                                          .instance
                                                                          .primaryFocus
                                                                          ?.unfocus();
                                                                    },
                                                                    child:
                                                                        Padding(
                                                                      padding: MediaQuery
                                                                          .viewInsetsOf(
                                                                              context),
                                                                      child:
                                                                          ActivityDirectWidget(
                                                                        activityDoc:
                                                                            listViewActivitiesRecord,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              ).then((value) =>
                                                                  safeSetState(
                                                                      () {}));
                                                            },
                                                            child:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .runningActivityCompletedModels
                                                                  .getModel(
                                                                listViewIndex
                                                                    .toString(),
                                                                listViewIndex,
                                                              ),
                                                              updateCallback: () =>
                                                                  safeSetState(
                                                                      () {}),
                                                              child:
                                                                  ActivityWidget(
                                                                key: Key(
                                                                  'Key1kj_${listViewIndex.toString()}',
                                                                ),
                                                                activitiesDoc:
                                                                    listViewActivitiesRecord,
                                                                checkAction:
                                                                    () async {
                                                                  await listViewActivitiesRecord
                                                                      .reference
                                                                      .update(
                                                                          createActivitiesRecordData(
                                                                    completed:
                                                                        false,
                                                                  ));
                                                                },
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 125.0,
                                            child: Stack(
                                              children: [
                                                Container(
                                                  width: double.infinity,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(),
                                                  child: Text(
                                                    'Long Jump',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 25.0, 0.0, 0.0),
                                                  child: StreamBuilder<
                                                      List<ActivitiesRecord>>(
                                                    stream:
                                                        queryActivitiesRecord(
                                                      queryBuilder:
                                                          (activitiesRecord) =>
                                                              activitiesRecord
                                                                  .where(
                                                                    'user',
                                                                    isEqualTo:
                                                                        currentUserReference,
                                                                  )
                                                                  .where(
                                                                    'type',
                                                                    isEqualTo: ActivityTypes
                                                                        .longJump
                                                                        .serialize(),
                                                                  )
                                                                  .where(
                                                                    'completed',
                                                                    isEqualTo:
                                                                        true,
                                                                  ),
                                                      limit: 20,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  AlwaysStoppedAnimation<
                                                                      Color>(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<ActivitiesRecord>
                                                          listViewActivitiesRecordList =
                                                          snapshot.data!;

                                                      return ListView.separated(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        primary: false,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        itemCount:
                                                            listViewActivitiesRecordList
                                                                .length,
                                                        separatorBuilder:
                                                            (_, __) => SizedBox(
                                                                width: 10.0),
                                                        itemBuilder: (context,
                                                            listViewIndex) {
                                                          final listViewActivitiesRecord =
                                                              listViewActivitiesRecordList[
                                                                  listViewIndex];
                                                          return InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              await showModalBottomSheet(
                                                                isScrollControlled:
                                                                    true,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) {
                                                                  return GestureDetector(
                                                                    onTap: () {
                                                                      FocusScope.of(
                                                                              context)
                                                                          .unfocus();
                                                                      FocusManager
                                                                          .instance
                                                                          .primaryFocus
                                                                          ?.unfocus();
                                                                    },
                                                                    child:
                                                                        Padding(
                                                                      padding: MediaQuery
                                                                          .viewInsetsOf(
                                                                              context),
                                                                      child:
                                                                          ActivityDirectWidget(
                                                                        activityDoc:
                                                                            listViewActivitiesRecord,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              ).then((value) =>
                                                                  safeSetState(
                                                                      () {}));
                                                            },
                                                            child:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .longJumpActivityCompletedModels
                                                                  .getModel(
                                                                listViewIndex
                                                                    .toString(),
                                                                listViewIndex,
                                                              ),
                                                              updateCallback: () =>
                                                                  safeSetState(
                                                                      () {}),
                                                              child:
                                                                  ActivityWidget(
                                                                key: Key(
                                                                  'Keyiqz_${listViewIndex.toString()}',
                                                                ),
                                                                activitiesDoc:
                                                                    listViewActivitiesRecord,
                                                                checkAction:
                                                                    () async {
                                                                  await listViewActivitiesRecord
                                                                      .reference
                                                                      .update(
                                                                          createActivitiesRecordData(
                                                                    completed:
                                                                        false,
                                                                  ));
                                                                },
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ]
                                            .divide(SizedBox(height: 20.0))
                                            .around(SizedBox(height: 20.0)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed(
                                ProfileWidget.routeName,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                            text: 'Profile',
                            icon: Icon(
                              Icons.person_sharp,
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
                                color: FlutterFlowTheme.of(context).primaryText,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed(
                                PlannerWidget.routeName,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                            text: 'Planner',
                            icon: Icon(
                              Icons.calendar_today,
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
                                color: FlutterFlowTheme.of(context).primaryText,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ],
                      ),
                    ]
                        .divide(SizedBox(height: 40.0))
                        .around(SizedBox(height: 40.0)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
