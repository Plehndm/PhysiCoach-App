import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'planned_activity_model.dart';
export 'planned_activity_model.dart';

class PlannedActivityWidget extends StatefulWidget {
  const PlannedActivityWidget({
    super.key,
    required this.activityDoc,
    required this.checkAction,
  });

  final ActivitiesRecord? activityDoc;
  final Future Function()? checkAction;

  @override
  State<PlannedActivityWidget> createState() => _PlannedActivityWidgetState();
}

class _PlannedActivityWidgetState extends State<PlannedActivityWidget> {
  late PlannedActivityModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlannedActivityModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Transform.scale(
            scaleX: 1.8,
            scaleY: 1.8,
            child: Theme(
              data: ThemeData(
                checkboxTheme: CheckboxThemeData(
                  visualDensity: VisualDensity.compact,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  shape: CircleBorder(),
                ),
                unselectedWidgetColor: FlutterFlowTheme.of(context).alternate,
              ),
              child: Checkbox(
                value: _model.checkboxValue ??= false,
                onChanged: (newValue) async {
                  safeSetState(() => _model.checkboxValue = newValue!);
                  if (newValue!) {
                    await widget.checkAction?.call();
                  }
                },
                side: BorderSide(
                  width: 2,
                  color: FlutterFlowTheme.of(context).alternate,
                ),
                activeColor: FlutterFlowTheme.of(context).primary,
                checkColor: FlutterFlowTheme.of(context).info,
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget.activityDoc?.title,
                    'title',
                  ),
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  valueOrDefault<String>(
                    widget.activityDoc?.description,
                    'description',
                  ),
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
          ),
          Container(
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
              color: Color(0x6E0077B6),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Stack(
              children: [
                if (widget.activityDoc?.type == ActivityTypes.running)
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Icon(
                      Icons.directions_run_sharp,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 35.0,
                    ),
                  ),
                if (widget.activityDoc?.type == ActivityTypes.tripleJump)
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Icon(
                      FFIcons.ktripleJump,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 35.0,
                    ),
                  ),
                if (widget.activityDoc?.type == ActivityTypes.longJump)
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Icon(
                      FFIcons.klongJump,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 35.0,
                    ),
                  ),
              ],
            ),
          ),
        ].divide(SizedBox(width: 15.0)).around(SizedBox(width: 15.0)),
      ),
    );
  }
}
