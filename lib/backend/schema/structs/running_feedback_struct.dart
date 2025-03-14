// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RunningFeedbackStruct extends FFFirebaseStruct {
  RunningFeedbackStruct({
    Feedback? asymmetryFeedback,
    Feedback? groundContactTimeFeedback,
    Feedback? verticalRatioFeedback,
    Feedback? strideLengthFeedback,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _asymmetryFeedback = asymmetryFeedback,
        _groundContactTimeFeedback = groundContactTimeFeedback,
        _verticalRatioFeedback = verticalRatioFeedback,
        _strideLengthFeedback = strideLengthFeedback,
        super(firestoreUtilData);

  // "asymmetryFeedback" field.
  Feedback? _asymmetryFeedback;
  Feedback get asymmetryFeedback => _asymmetryFeedback ?? Feedback.good;
  set asymmetryFeedback(Feedback? val) => _asymmetryFeedback = val;

  bool hasAsymmetryFeedback() => _asymmetryFeedback != null;

  // "groundContactTimeFeedback" field.
  Feedback? _groundContactTimeFeedback;
  Feedback get groundContactTimeFeedback =>
      _groundContactTimeFeedback ?? Feedback.good;
  set groundContactTimeFeedback(Feedback? val) =>
      _groundContactTimeFeedback = val;

  bool hasGroundContactTimeFeedback() => _groundContactTimeFeedback != null;

  // "verticalRatioFeedback" field.
  Feedback? _verticalRatioFeedback;
  Feedback get verticalRatioFeedback => _verticalRatioFeedback ?? Feedback.good;
  set verticalRatioFeedback(Feedback? val) => _verticalRatioFeedback = val;

  bool hasVerticalRatioFeedback() => _verticalRatioFeedback != null;

  // "strideLengthFeedback" field.
  Feedback? _strideLengthFeedback;
  Feedback get strideLengthFeedback => _strideLengthFeedback ?? Feedback.good;
  set strideLengthFeedback(Feedback? val) => _strideLengthFeedback = val;

  bool hasStrideLengthFeedback() => _strideLengthFeedback != null;

  static RunningFeedbackStruct fromMap(Map<String, dynamic> data) =>
      RunningFeedbackStruct(
        asymmetryFeedback: data['asymmetryFeedback'] is Feedback
            ? data['asymmetryFeedback']
            : deserializeEnum<Feedback>(data['asymmetryFeedback']),
        groundContactTimeFeedback: data['groundContactTimeFeedback'] is Feedback
            ? data['groundContactTimeFeedback']
            : deserializeEnum<Feedback>(data['groundContactTimeFeedback']),
        verticalRatioFeedback: data['verticalRatioFeedback'] is Feedback
            ? data['verticalRatioFeedback']
            : deserializeEnum<Feedback>(data['verticalRatioFeedback']),
        strideLengthFeedback: data['strideLengthFeedback'] is Feedback
            ? data['strideLengthFeedback']
            : deserializeEnum<Feedback>(data['strideLengthFeedback']),
      );

  static RunningFeedbackStruct? maybeFromMap(dynamic data) => data is Map
      ? RunningFeedbackStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'asymmetryFeedback': _asymmetryFeedback?.serialize(),
        'groundContactTimeFeedback': _groundContactTimeFeedback?.serialize(),
        'verticalRatioFeedback': _verticalRatioFeedback?.serialize(),
        'strideLengthFeedback': _strideLengthFeedback?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'asymmetryFeedback': serializeParam(
          _asymmetryFeedback,
          ParamType.Enum,
        ),
        'groundContactTimeFeedback': serializeParam(
          _groundContactTimeFeedback,
          ParamType.Enum,
        ),
        'verticalRatioFeedback': serializeParam(
          _verticalRatioFeedback,
          ParamType.Enum,
        ),
        'strideLengthFeedback': serializeParam(
          _strideLengthFeedback,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static RunningFeedbackStruct fromSerializableMap(Map<String, dynamic> data) =>
      RunningFeedbackStruct(
        asymmetryFeedback: deserializeParam<Feedback>(
          data['asymmetryFeedback'],
          ParamType.Enum,
          false,
        ),
        groundContactTimeFeedback: deserializeParam<Feedback>(
          data['groundContactTimeFeedback'],
          ParamType.Enum,
          false,
        ),
        verticalRatioFeedback: deserializeParam<Feedback>(
          data['verticalRatioFeedback'],
          ParamType.Enum,
          false,
        ),
        strideLengthFeedback: deserializeParam<Feedback>(
          data['strideLengthFeedback'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'RunningFeedbackStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RunningFeedbackStruct &&
        asymmetryFeedback == other.asymmetryFeedback &&
        groundContactTimeFeedback == other.groundContactTimeFeedback &&
        verticalRatioFeedback == other.verticalRatioFeedback &&
        strideLengthFeedback == other.strideLengthFeedback;
  }

  @override
  int get hashCode => const ListEquality().hash([
        asymmetryFeedback,
        groundContactTimeFeedback,
        verticalRatioFeedback,
        strideLengthFeedback
      ]);
}

RunningFeedbackStruct createRunningFeedbackStruct({
  Feedback? asymmetryFeedback,
  Feedback? groundContactTimeFeedback,
  Feedback? verticalRatioFeedback,
  Feedback? strideLengthFeedback,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RunningFeedbackStruct(
      asymmetryFeedback: asymmetryFeedback,
      groundContactTimeFeedback: groundContactTimeFeedback,
      verticalRatioFeedback: verticalRatioFeedback,
      strideLengthFeedback: strideLengthFeedback,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RunningFeedbackStruct? updateRunningFeedbackStruct(
  RunningFeedbackStruct? runningFeedback, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    runningFeedback
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRunningFeedbackStructData(
  Map<String, dynamic> firestoreData,
  RunningFeedbackStruct? runningFeedback,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (runningFeedback == null) {
    return;
  }
  if (runningFeedback.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && runningFeedback.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final runningFeedbackData =
      getRunningFeedbackFirestoreData(runningFeedback, forFieldValue);
  final nestedData =
      runningFeedbackData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = runningFeedback.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRunningFeedbackFirestoreData(
  RunningFeedbackStruct? runningFeedback, [
  bool forFieldValue = false,
]) {
  if (runningFeedback == null) {
    return {};
  }
  final firestoreData = mapToFirestore(runningFeedback.toMap());

  // Add any Firestore field values
  runningFeedback.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRunningFeedbackListFirestoreData(
  List<RunningFeedbackStruct>? runningFeedbacks,
) =>
    runningFeedbacks
        ?.map((e) => getRunningFeedbackFirestoreData(e, true))
        .toList() ??
    [];
