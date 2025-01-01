// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AsymmetryDataStruct extends FFFirebaseStruct {
  AsymmetryDataStruct({
    double? percent,
    double? timeOccurred,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _percent = percent,
        _timeOccurred = timeOccurred,
        super(firestoreUtilData);

  // "percent" field.
  double? _percent;
  double get percent => _percent ?? 50.0;
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

  static AsymmetryDataStruct fromMap(Map<String, dynamic> data) =>
      AsymmetryDataStruct(
        percent: castToType<double>(data['percent']),
        timeOccurred: castToType<double>(data['timeOccurred']),
      );

  static AsymmetryDataStruct? maybeFromMap(dynamic data) => data is Map
      ? AsymmetryDataStruct.fromMap(data.cast<String, dynamic>())
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

  static AsymmetryDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      AsymmetryDataStruct(
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
  String toString() => 'AsymmetryDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AsymmetryDataStruct &&
        percent == other.percent &&
        timeOccurred == other.timeOccurred;
  }

  @override
  int get hashCode => const ListEquality().hash([percent, timeOccurred]);
}

AsymmetryDataStruct createAsymmetryDataStruct({
  double? percent,
  double? timeOccurred,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AsymmetryDataStruct(
      percent: percent,
      timeOccurred: timeOccurred,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AsymmetryDataStruct? updateAsymmetryDataStruct(
  AsymmetryDataStruct? asymmetryData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    asymmetryData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAsymmetryDataStructData(
  Map<String, dynamic> firestoreData,
  AsymmetryDataStruct? asymmetryData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (asymmetryData == null) {
    return;
  }
  if (asymmetryData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && asymmetryData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final asymmetryDataData =
      getAsymmetryDataFirestoreData(asymmetryData, forFieldValue);
  final nestedData =
      asymmetryDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = asymmetryData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAsymmetryDataFirestoreData(
  AsymmetryDataStruct? asymmetryData, [
  bool forFieldValue = false,
]) {
  if (asymmetryData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(asymmetryData.toMap());

  // Add any Firestore field values
  asymmetryData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAsymmetryDataListFirestoreData(
  List<AsymmetryDataStruct>? asymmetryDatas,
) =>
    asymmetryDatas
        ?.map((e) => getAsymmetryDataFirestoreData(e, true))
        .toList() ??
    [];
