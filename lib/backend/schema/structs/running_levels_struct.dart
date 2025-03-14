// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RunningLevelsStruct extends FFFirebaseStruct {
  RunningLevelsStruct({
    FeedbackLevelsStruct? asymmetryLevels,
    FeedbackLevelsStruct? groundContactTimeLevels,
    FeedbackLevelsStruct? verticalRatioLevels,
    FeedbackLevelsStruct? strideLengthLevels,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _asymmetryLevels = asymmetryLevels,
        _groundContactTimeLevels = groundContactTimeLevels,
        _verticalRatioLevels = verticalRatioLevels,
        _strideLengthLevels = strideLengthLevels,
        super(firestoreUtilData);

  // "asymmetryLevels" field.
  FeedbackLevelsStruct? _asymmetryLevels;
  FeedbackLevelsStruct get asymmetryLevels =>
      _asymmetryLevels ?? FeedbackLevelsStruct();
  set asymmetryLevels(FeedbackLevelsStruct? val) => _asymmetryLevels = val;

  void updateAsymmetryLevels(Function(FeedbackLevelsStruct) updateFn) {
    updateFn(_asymmetryLevels ??= FeedbackLevelsStruct());
  }

  bool hasAsymmetryLevels() => _asymmetryLevels != null;

  // "groundContactTimeLevels" field.
  FeedbackLevelsStruct? _groundContactTimeLevels;
  FeedbackLevelsStruct get groundContactTimeLevels =>
      _groundContactTimeLevels ?? FeedbackLevelsStruct();
  set groundContactTimeLevels(FeedbackLevelsStruct? val) =>
      _groundContactTimeLevels = val;

  void updateGroundContactTimeLevels(Function(FeedbackLevelsStruct) updateFn) {
    updateFn(_groundContactTimeLevels ??= FeedbackLevelsStruct());
  }

  bool hasGroundContactTimeLevels() => _groundContactTimeLevels != null;

  // "verticalRatioLevels" field.
  FeedbackLevelsStruct? _verticalRatioLevels;
  FeedbackLevelsStruct get verticalRatioLevels =>
      _verticalRatioLevels ?? FeedbackLevelsStruct();
  set verticalRatioLevels(FeedbackLevelsStruct? val) =>
      _verticalRatioLevels = val;

  void updateVerticalRatioLevels(Function(FeedbackLevelsStruct) updateFn) {
    updateFn(_verticalRatioLevels ??= FeedbackLevelsStruct());
  }

  bool hasVerticalRatioLevels() => _verticalRatioLevels != null;

  // "strideLengthLevels" field.
  FeedbackLevelsStruct? _strideLengthLevels;
  FeedbackLevelsStruct get strideLengthLevels =>
      _strideLengthLevels ?? FeedbackLevelsStruct();
  set strideLengthLevels(FeedbackLevelsStruct? val) =>
      _strideLengthLevels = val;

  void updateStrideLengthLevels(Function(FeedbackLevelsStruct) updateFn) {
    updateFn(_strideLengthLevels ??= FeedbackLevelsStruct());
  }

  bool hasStrideLengthLevels() => _strideLengthLevels != null;

  static RunningLevelsStruct fromMap(Map<String, dynamic> data) =>
      RunningLevelsStruct(
        asymmetryLevels: data['asymmetryLevels'] is FeedbackLevelsStruct
            ? data['asymmetryLevels']
            : FeedbackLevelsStruct.maybeFromMap(data['asymmetryLevels']),
        groundContactTimeLevels:
            data['groundContactTimeLevels'] is FeedbackLevelsStruct
                ? data['groundContactTimeLevels']
                : FeedbackLevelsStruct.maybeFromMap(
                    data['groundContactTimeLevels']),
        verticalRatioLevels: data['verticalRatioLevels'] is FeedbackLevelsStruct
            ? data['verticalRatioLevels']
            : FeedbackLevelsStruct.maybeFromMap(data['verticalRatioLevels']),
        strideLengthLevels: data['strideLengthLevels'] is FeedbackLevelsStruct
            ? data['strideLengthLevels']
            : FeedbackLevelsStruct.maybeFromMap(data['strideLengthLevels']),
      );

  static RunningLevelsStruct? maybeFromMap(dynamic data) => data is Map
      ? RunningLevelsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'asymmetryLevels': _asymmetryLevels?.toMap(),
        'groundContactTimeLevels': _groundContactTimeLevels?.toMap(),
        'verticalRatioLevels': _verticalRatioLevels?.toMap(),
        'strideLengthLevels': _strideLengthLevels?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'asymmetryLevels': serializeParam(
          _asymmetryLevels,
          ParamType.DataStruct,
        ),
        'groundContactTimeLevels': serializeParam(
          _groundContactTimeLevels,
          ParamType.DataStruct,
        ),
        'verticalRatioLevels': serializeParam(
          _verticalRatioLevels,
          ParamType.DataStruct,
        ),
        'strideLengthLevels': serializeParam(
          _strideLengthLevels,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static RunningLevelsStruct fromSerializableMap(Map<String, dynamic> data) =>
      RunningLevelsStruct(
        asymmetryLevels: deserializeStructParam(
          data['asymmetryLevels'],
          ParamType.DataStruct,
          false,
          structBuilder: FeedbackLevelsStruct.fromSerializableMap,
        ),
        groundContactTimeLevels: deserializeStructParam(
          data['groundContactTimeLevels'],
          ParamType.DataStruct,
          false,
          structBuilder: FeedbackLevelsStruct.fromSerializableMap,
        ),
        verticalRatioLevels: deserializeStructParam(
          data['verticalRatioLevels'],
          ParamType.DataStruct,
          false,
          structBuilder: FeedbackLevelsStruct.fromSerializableMap,
        ),
        strideLengthLevels: deserializeStructParam(
          data['strideLengthLevels'],
          ParamType.DataStruct,
          false,
          structBuilder: FeedbackLevelsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'RunningLevelsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RunningLevelsStruct &&
        asymmetryLevels == other.asymmetryLevels &&
        groundContactTimeLevels == other.groundContactTimeLevels &&
        verticalRatioLevels == other.verticalRatioLevels &&
        strideLengthLevels == other.strideLengthLevels;
  }

  @override
  int get hashCode => const ListEquality().hash([
        asymmetryLevels,
        groundContactTimeLevels,
        verticalRatioLevels,
        strideLengthLevels
      ]);
}

RunningLevelsStruct createRunningLevelsStruct({
  FeedbackLevelsStruct? asymmetryLevels,
  FeedbackLevelsStruct? groundContactTimeLevels,
  FeedbackLevelsStruct? verticalRatioLevels,
  FeedbackLevelsStruct? strideLengthLevels,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RunningLevelsStruct(
      asymmetryLevels:
          asymmetryLevels ?? (clearUnsetFields ? FeedbackLevelsStruct() : null),
      groundContactTimeLevels: groundContactTimeLevels ??
          (clearUnsetFields ? FeedbackLevelsStruct() : null),
      verticalRatioLevels: verticalRatioLevels ??
          (clearUnsetFields ? FeedbackLevelsStruct() : null),
      strideLengthLevels: strideLengthLevels ??
          (clearUnsetFields ? FeedbackLevelsStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RunningLevelsStruct? updateRunningLevelsStruct(
  RunningLevelsStruct? runningLevels, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    runningLevels
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRunningLevelsStructData(
  Map<String, dynamic> firestoreData,
  RunningLevelsStruct? runningLevels,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (runningLevels == null) {
    return;
  }
  if (runningLevels.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && runningLevels.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final runningLevelsData =
      getRunningLevelsFirestoreData(runningLevels, forFieldValue);
  final nestedData =
      runningLevelsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = runningLevels.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRunningLevelsFirestoreData(
  RunningLevelsStruct? runningLevels, [
  bool forFieldValue = false,
]) {
  if (runningLevels == null) {
    return {};
  }
  final firestoreData = mapToFirestore(runningLevels.toMap());

  // Handle nested data for "asymmetryLevels" field.
  addFeedbackLevelsStructData(
    firestoreData,
    runningLevels.hasAsymmetryLevels() ? runningLevels.asymmetryLevels : null,
    'asymmetryLevels',
    forFieldValue,
  );

  // Handle nested data for "groundContactTimeLevels" field.
  addFeedbackLevelsStructData(
    firestoreData,
    runningLevels.hasGroundContactTimeLevels()
        ? runningLevels.groundContactTimeLevels
        : null,
    'groundContactTimeLevels',
    forFieldValue,
  );

  // Handle nested data for "verticalRatioLevels" field.
  addFeedbackLevelsStructData(
    firestoreData,
    runningLevels.hasVerticalRatioLevels()
        ? runningLevels.verticalRatioLevels
        : null,
    'verticalRatioLevels',
    forFieldValue,
  );

  // Handle nested data for "strideLengthLevels" field.
  addFeedbackLevelsStructData(
    firestoreData,
    runningLevels.hasStrideLengthLevels()
        ? runningLevels.strideLengthLevels
        : null,
    'strideLengthLevels',
    forFieldValue,
  );

  // Add any Firestore field values
  runningLevels.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRunningLevelsListFirestoreData(
  List<RunningLevelsStruct>? runningLevelss,
) =>
    runningLevelss
        ?.map((e) => getRunningLevelsFirestoreData(e, true))
        .toList() ??
    [];
