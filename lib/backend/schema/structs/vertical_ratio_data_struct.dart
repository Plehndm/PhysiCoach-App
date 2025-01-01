// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class VerticalRatioDataStruct extends FFFirebaseStruct {
  VerticalRatioDataStruct({
    double? percent,
    double? timeOccurred,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _percent = percent,
        _timeOccurred = timeOccurred,
        super(firestoreUtilData);

  // "percent" field.
  double? _percent;
  double get percent => _percent ?? 0.0;
  set percent(double? val) => _percent = val;

  void incrementPercent(double amount) => percent = percent + amount;

  bool hasPercent() => _percent != null;

  // "timeOccurred" field.
  double? _timeOccurred;
  double get timeOccurred => _timeOccurred ?? 0.0;
  set timeOccurred(double? val) => _timeOccurred = val;

  void incrementTimeOccurred(double amount) =>
      timeOccurred = timeOccurred + amount;

  bool hasTimeOccurred() => _timeOccurred != null;

  static VerticalRatioDataStruct fromMap(Map<String, dynamic> data) =>
      VerticalRatioDataStruct(
        percent: castToType<double>(data['percent']),
        timeOccurred: castToType<double>(data['timeOccurred']),
      );

  static VerticalRatioDataStruct? maybeFromMap(dynamic data) => data is Map
      ? VerticalRatioDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'percent': _percent,
        'timeOccurred': _timeOccurred,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'percent': serializeParam(
          _percent,
          ParamType.double,
        ),
        'timeOccurred': serializeParam(
          _timeOccurred,
          ParamType.double,
        ),
      }.withoutNulls;

  static VerticalRatioDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      VerticalRatioDataStruct(
        percent: deserializeParam(
          data['percent'],
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
  String toString() => 'VerticalRatioDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VerticalRatioDataStruct &&
        percent == other.percent &&
        timeOccurred == other.timeOccurred;
  }

  @override
  int get hashCode => const ListEquality().hash([percent, timeOccurred]);
}

VerticalRatioDataStruct createVerticalRatioDataStruct({
  double? percent,
  double? timeOccurred,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VerticalRatioDataStruct(
      percent: percent,
      timeOccurred: timeOccurred,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

VerticalRatioDataStruct? updateVerticalRatioDataStruct(
  VerticalRatioDataStruct? verticalRatioData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    verticalRatioData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addVerticalRatioDataStructData(
  Map<String, dynamic> firestoreData,
  VerticalRatioDataStruct? verticalRatioData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (verticalRatioData == null) {
    return;
  }
  if (verticalRatioData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && verticalRatioData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final verticalRatioDataData =
      getVerticalRatioDataFirestoreData(verticalRatioData, forFieldValue);
  final nestedData =
      verticalRatioDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = verticalRatioData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getVerticalRatioDataFirestoreData(
  VerticalRatioDataStruct? verticalRatioData, [
  bool forFieldValue = false,
]) {
  if (verticalRatioData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(verticalRatioData.toMap());

  // Add any Firestore field values
  verticalRatioData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVerticalRatioDataListFirestoreData(
  List<VerticalRatioDataStruct>? verticalRatioDatas,
) =>
    verticalRatioDatas
        ?.map((e) => getVerticalRatioDataFirestoreData(e, true))
        .toList() ??
    [];
