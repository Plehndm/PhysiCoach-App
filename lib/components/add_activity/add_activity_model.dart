import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_activity_widget.dart' show AddActivityWidget;
import 'package:flutter/material.dart';

class AddActivityModel extends FlutterFlowModel<AddActivityWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Type widget.
  ActivityTypes? typeValue;
  FormFieldController<ActivityTypes>? typeValueController;
  // State field(s) for Title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleTextController;
  String? Function(BuildContext, String?)? titleTextControllerValidator;
  String? _titleTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Title is required';
    }

    return null;
  }

  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  DateTime? datePicked;
  // Stores action output result for [Backend Call - Create Document] action in AddActivity-Button widget.
  ActivitiesRecord? activityDoc;
  // Stores action output result for [Backend Call - Create Document] action in AddActivity-Button widget.
  AccelerometerDataRecord? accelDoc;
  // Stores action output result for [Backend Call - Create Document] action in AddActivity-Button widget.
  GyroscopeDataRecord? gyroDoc;

  @override
  void initState(BuildContext context) {
    titleTextControllerValidator = _titleTextControllerValidator;
  }

  @override
  void dispose() {
    titleFocusNode?.dispose();
    titleTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
