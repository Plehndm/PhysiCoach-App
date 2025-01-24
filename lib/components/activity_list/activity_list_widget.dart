import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/components/activity/activity_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'activity_list_model.dart';
export 'activity_list_model.dart';

class ActivityListWidget extends StatefulWidget {
  const ActivityListWidget({
    super.key,
    required this.activityType,
    required this.navigateAction,
  });

  final ActivityTypes? activityType;
  final Future Function()? navigateAction;

  @override
  State<ActivityListWidget> createState() => _ActivityListWidgetState();
}

class _ActivityListWidgetState extends State<ActivityListWidget> {
  late ActivityListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ActivityListModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125.0,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 100.0,
            decoration: const BoxDecoration(),
            child: Text(
              valueOrDefault<String>(
                (String activityType) {
                  return activityType.split("_").join(" ");
                }(widget.activityType!.name),
                'type',
              ),
              style: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Inter',
                    letterSpacing: 0.0,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
            child: StreamBuilder<List<ActivitiesRecord>>(
              stream: queryActivitiesRecord(
                queryBuilder: (activitiesRecord) => activitiesRecord
                    .where(
                      'user',
                      isEqualTo: currentUserReference,
                    )
                    .where(
                      'type',
                      isEqualTo: widget.activityType?.serialize(),
                    ),
                limit: 20,
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
                List<ActivitiesRecord> listViewActivitiesRecordList =
                    snapshot.data!;

                return ListView.builder(
                  padding: EdgeInsets.zero,
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: listViewActivitiesRecordList.length,
                  itemBuilder: (context, listViewIndex) {
                    final listViewActivitiesRecord =
                        listViewActivitiesRecordList[listViewIndex];
                    return InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await widget.navigateAction?.call();
                      },
                      child: wrapWithModel(
                        model: _model.activityModels.getModel(
                          listViewIndex.toString(),
                          listViewIndex,
                        ),
                        updateCallback: () => safeSetState(() {}),
                        child: ActivityWidget(
                          key: Key(
                            'Keyvuz_${listViewIndex.toString()}',
                          ),
                          activitiesDoc: listViewActivitiesRecord,
                          checkAction: () async {},
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
    );
  }
}
