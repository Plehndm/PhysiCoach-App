import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'add_activity_model.dart';
export 'add_activity_model.dart';

class AddActivityWidget extends StatefulWidget {
  const AddActivityWidget({super.key});

  @override
  State<AddActivityWidget> createState() => _AddActivityWidgetState();
}

class _AddActivityWidgetState extends State<AddActivityWidget> {
  late AddActivityModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddActivityModel());

    _model.titleTextController ??= TextEditingController();
    _model.titleFocusNode ??= FocusNode();

    _model.descriptionTextController ??= TextEditingController();
    _model.descriptionFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      constraints: BoxConstraints(
        maxWidth: 500.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
        border: Border.all(
          width: 1.0,
        ),
      ),
      child: Form(
        key: _model.formKey,
        autovalidateMode: AutovalidateMode.always,
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: AlignmentDirectional(1.0, -1.0),
                  child: FlutterFlowIconButton(
                    borderRadius: 20.0,
                    buttonSize: 50.0,
                    icon: Icon(
                      Icons.close,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 30.0,
                    ),
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Text(
                  'Add Activity',
                  style: FlutterFlowTheme.of(context).headlineLarge.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
                FlutterFlowDropDown<ActivityTypes>(
                  controller: _model.typeValueController ??=
                      FormFieldController<ActivityTypes>(
                    _model.typeValue ??= ActivityTypes.tripleJump,
                  ),
                  options: List<ActivityTypes>.from(ActivityTypes.values),
                  optionLabels: ['Tripple Jump', 'Running', 'Long Jump'],
                  onChanged: (val) =>
                      safeSetState(() => _model.typeValue = val),
                  width: double.infinity,
                  height: 50.0,
                  textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Inter',
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                      ),
                  hintText: 'Select Type...',
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  elevation: 0.0,
                  borderColor: FlutterFlowTheme.of(context).primaryText,
                  borderWidth: 1.0,
                  borderRadius: 24.0,
                  margin: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  hidesUnderline: true,
                  isOverButton: false,
                  isSearchable: false,
                  isMultiSelect: false,
                ),
                Container(
                  width: double.infinity,
                  child: TextFormField(
                    controller: _model.titleTextController,
                    focusNode: _model.titleFocusNode,
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: true,
                      labelStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Inter',
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                              ),
                      hintText: 'Title...',
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Inter',
                                fontSize: 20.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primaryText,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      filled: true,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      contentPadding: EdgeInsetsDirectional.fromSTEB(
                          20.0, 22.0, 20.0, 22.0),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                        ),
                    cursorColor: FlutterFlowTheme.of(context).primaryText,
                    validator: _model.titleTextControllerValidator
                        .asValidator(context),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: TextFormField(
                    controller: _model.descriptionTextController,
                    focusNode: _model.descriptionFocusNode,
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: true,
                      labelStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Inter',
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                              ),
                      hintText: 'Description (optional)...',
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Inter',
                                fontSize: 20.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primaryText,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      filled: true,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      contentPadding: EdgeInsetsDirectional.fromSTEB(
                          20.0, 22.0, 20.0, 22.0),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                        ),
                    maxLines: null,
                    minLines: 3,
                    cursorColor: FlutterFlowTheme.of(context).primaryText,
                    validator: _model.descriptionTextControllerValidator
                        .asValidator(context),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    final _datePickedDate = await showDatePicker(
                      context: context,
                      initialDate: getCurrentTimestamp,
                      firstDate: DateTime(1900),
                      lastDate: DateTime(2050),
                      builder: (context, child) {
                        return wrapInMaterialDatePickerTheme(
                          context,
                          child!,
                          headerBackgroundColor:
                              FlutterFlowTheme.of(context).primary,
                          headerForegroundColor:
                              FlutterFlowTheme.of(context).info,
                          headerTextStyle: FlutterFlowTheme.of(context)
                              .headlineLarge
                              .override(
                                fontFamily: 'Inter',
                                fontSize: 32.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                              ),
                          pickerBackgroundColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          pickerForegroundColor:
                              FlutterFlowTheme.of(context).primaryText,
                          selectedDateTimeBackgroundColor:
                              FlutterFlowTheme.of(context).primary,
                          selectedDateTimeForegroundColor:
                              FlutterFlowTheme.of(context).info,
                          actionButtonForegroundColor:
                              FlutterFlowTheme.of(context).primaryText,
                          iconSize: 24.0,
                        );
                      },
                    );

                    if (_datePickedDate != null) {
                      safeSetState(() {
                        _model.datePicked = DateTime(
                          _datePickedDate.year,
                          _datePickedDate.month,
                          _datePickedDate.day,
                        );
                      });
                    } else if (_model.datePicked != null) {
                      safeSetState(() {
                        _model.datePicked = getCurrentTimestamp;
                      });
                    }
                  },
                  text: 'Set Date',
                  icon: Icon(
                    Icons.calendar_today,
                    size: 15.0,
                  ),
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 70.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                    elevation: 0.0,
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primaryText,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    var activitiesRecordReference =
                        ActivitiesRecord.collection.doc();
                    await activitiesRecordReference
                        .set(createActivitiesRecordData(
                      type: _model.typeValue,
                      title: _model.titleTextController.text,
                      description: _model.descriptionTextController.text,
                      user: currentUserReference,
                      id: FFAppState().activityId,
                      completed: false,
                      date: updateDateStruct(
                        DateStruct(
                          day: valueOrDefault<int>(
                            functions.getDay(_model.datePicked!),
                            1,
                          ),
                          month: valueOrDefault<int>(
                            functions.getMonth(_model.datePicked!),
                            1,
                          ),
                          year: valueOrDefault<int>(
                            functions.getYear(_model.datePicked!),
                            2000,
                          ),
                        ),
                        clearUnsetFields: false,
                        create: true,
                      ),
                    ));
                    _model.activityDoc = ActivitiesRecord.getDocumentFromData(
                        createActivitiesRecordData(
                          type: _model.typeValue,
                          title: _model.titleTextController.text,
                          description: _model.descriptionTextController.text,
                          user: currentUserReference,
                          id: FFAppState().activityId,
                          completed: false,
                          date: updateDateStruct(
                            DateStruct(
                              day: valueOrDefault<int>(
                                functions.getDay(_model.datePicked!),
                                1,
                              ),
                              month: valueOrDefault<int>(
                                functions.getMonth(_model.datePicked!),
                                1,
                              ),
                              year: valueOrDefault<int>(
                                functions.getYear(_model.datePicked!),
                                2000,
                              ),
                            ),
                            clearUnsetFields: false,
                            create: true,
                          ),
                        ),
                        activitiesRecordReference);
                    if (_model.typeValue == ActivityTypes.running) {
                      await RunningDataRecord.collection
                          .doc()
                          .set(createRunningDataRecordData(
                            id: FFAppState().activityId,
                            user: currentUserReference,
                            runningLevels: updateRunningLevelsStruct(
                              RunningLevelsStruct(
                                asymmetryLevels: FeedbackLevelsStruct(
                                  great: 50.0,
                                  good: 45.0,
                                  improve: 40.0,
                                ),
                                groundContactTimeLevels: FeedbackLevelsStruct(
                                  great: 190.0,
                                  good: 200.0,
                                  improve: 210.0,
                                ),
                                verticalRatioLevels: FeedbackLevelsStruct(
                                  great: 8.0,
                                  good: 10.0,
                                  improve: 12.0,
                                ),
                                strideLengthLevels: FeedbackLevelsStruct(
                                  great: 34.0,
                                  good: 29.0,
                                  improve: 24.0,
                                ),
                              ),
                              clearUnsetFields: false,
                              create: true,
                            ),
                          ));
                    } else {
                      if (_model.typeValue == ActivityTypes.tripleJump) {
                        await TrippleJumpDataRecord.collection
                            .doc()
                            .set(createTrippleJumpDataRecordData(
                              id: FFAppState().activityId,
                              user: currentUserReference,
                            ));
                      } else {
                        if (_model.typeValue == ActivityTypes.longJump) {
                          await LongJumpDataRecord.collection
                              .doc()
                              .set(createLongJumpDataRecordData(
                                id: FFAppState().activityId,
                                user: currentUserReference,
                              ));
                        }
                      }
                    }

                    var accelerometerDataRecordReference =
                        AccelerometerDataRecord.createDoc(
                            _model.activityDoc!.reference);
                    await accelerometerDataRecordReference
                        .set(createAccelerometerDataRecordData(
                      id: FFAppState().activityId,
                      user: currentUserReference,
                    ));
                    _model.accelDoc =
                        AccelerometerDataRecord.getDocumentFromData(
                            createAccelerometerDataRecordData(
                              id: FFAppState().activityId,
                              user: currentUserReference,
                            ),
                            accelerometerDataRecordReference);

                    var gyroscopeDataRecordReference =
                        GyroscopeDataRecord.createDoc(
                            _model.activityDoc!.reference);
                    await gyroscopeDataRecordReference
                        .set(createGyroscopeDataRecordData(
                      id: FFAppState().activityId,
                      user: currentUserReference,
                    ));
                    _model.gyroDoc = GyroscopeDataRecord.getDocumentFromData(
                        createGyroscopeDataRecordData(
                          id: FFAppState().activityId,
                          user: currentUserReference,
                        ),
                        gyroscopeDataRecordReference);
                    FFAppState().activityId = FFAppState().activityId + 1;
                    safeSetState(() {});
                    Navigator.pop(context);

                    safeSetState(() {});
                  },
                  text: 'Add Activity',
                  icon: Icon(
                    Icons.add,
                    size: 30.0,
                  ),
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 70.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                    elevation: 0.0,
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primaryText,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
              ].divide(SizedBox(height: 24.0)),
            ),
          ),
        ),
      ),
    );
  }
}
