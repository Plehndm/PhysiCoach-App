// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class StrideLengthDataStruct extends FFFirebaseStruct {
  StrideLengthDataStruct({
    double? strideLength,
    double? timeOccurred,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _strideLength = strideLength,
        _timeOccurred = timeOccurred,
        super(firestoreUtilData);

  // "strideLength" field.
  double? _strideLength;
  double get strideLength => _strideLength ?? 0.0;
  set strideLength(double? val) => _strideLength = val;

  void incrementStrideLength(double amount) =>
      strideLength = strideLength + amount;

  bool hasStrideLength() => _strideLength != null;

  // "timeOccurred" field.
  double? _timeOccurred;
  double get timeOccurred => _timeOccurred ?? 0.0;
  set timeOccurred(double? val) => _timeOccurred = val;

  void incrementTimeOccurred(double amount) =>
      timeOccurred = timeOccurred + amount;

  bool hasTimeOccurred() => _timeOccurred != null;

  static StrideLengthDataStruct fromMap(Map<String, dynamic> data) =>
      StrideLengthDataStruct(
        strideLength: castToType<double>(data['strideLength']),
        timeOccurred: castToType<double>(data['timeOccurred']),
      );

  static StrideLengthDataStruct? maybeFromMap(dynamic data) => data is Map
      ? StrideLengthDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'strideLength': _strideLength,
        'timeOccurred': _timeOccurred,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'strideLength': serializeParam(
          _strideLength,
          ParamType.double,
        ),
        'timeOccurred': serializeParam(
          _timeOccurred,
          ParamType.double,
        ),
      }.withoutNulls;

  static StrideLengthDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      StrideLengthDataStruct(
        strideLength: deserializeParam(
          data['strideLength'],
          ParamType.double,
          false,
        ),
        timeOccurred: deserializeParam(
          data['timeOccurred'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'StrideLengthDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StrideLengthDataStruct &&
        strideLength == other.strideLength &&
        timeOccurred == other.timeOccurred;
  }

  @override
  int get hashCode => const ListEquality().hash([strideLength, timeOccurred]);
}

StrideLengthDataStruct createStrideLengthDataStruct({
  double? strideLength,
  double? timeOccurred,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    StrideLengthDataStruct(
      strideLength: strideLength,
      timeOccurred: timeOccurred,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

StrideLengthDataStruct? updateStrideLengthDataStruct(
  StrideLengthDataStruct? strideLengthData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    strideLengthData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addStrideLengthDataStructData(
  Map<String, dynamic> firestoreData,
  StrideLengthDataStruct? strideLengthData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (strideLengthData == null) {
    return;
  }
  if (strideLengthData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && strideLengthData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final strideLengthDataData =
      getStrideLengthDataFirestoreData(strideLengthData, forFieldValue);
  final nestedData =
      strideLengthDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = strideLengthData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getStrideLengthDataFirestoreData(
  StrideLengthDataStruct? strideLengthData, [
  bool forFieldValue = false,
]) {
  if (strideLengthData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(strideLengthData.toMap());

  // Add any Firestore field values
  strideLengthData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getStrideLengthDataListFirestoreData(
  List<StrideLengthDataStruct>? strideLengthDatas,
) =>
    strideLengthDatas
        ?.map((e) => getStrideLengthDataFirestoreData(e, true))
        .toList() ??
    [];
