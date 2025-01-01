// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class GroundContactTimeDataStruct extends FFFirebaseStruct {
  GroundContactTimeDataStruct({
    String? foot,
    double? contactTime,
    double? timeOccurred,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _foot = foot,
        _contactTime = contactTime,
        _timeOccurred = timeOccurred,
        super(firestoreUtilData);

  // "foot" field.
  String? _foot;
  String get foot => _foot ?? 'Left';
  set foot(String? val) => _foot = val;

  bool hasFoot() => _foot != null;

  // "contactTime" field.
  double? _contactTime;
  double get contactTime => _contactTime ?? 0.0;
  set contactTime(double? val) => _contactTime = val;

  void incrementContactTime(double amount) =>
      contactTime = contactTime + amount;

  bool hasContactTime() => _contactTime != null;

  // "timeOccurred" field.
  double? _timeOccurred;
  double get timeOccurred => _timeOccurred ?? 0.0;
  set timeOccurred(double? val) => _timeOccurred = val;

  void incrementTimeOccurred(double amount) =>
      timeOccurred = timeOccurred + amount;

  bool hasTimeOccurred() => _timeOccurred != null;

  static GroundContactTimeDataStruct fromMap(Map<String, dynamic> data) =>
      GroundContactTimeDataStruct(
        foot: data['foot'] as String?,
        contactTime: castToType<double>(data['contactTime']),
        timeOccurred: castToType<double>(data['timeOccurred']),
      );

  static GroundContactTimeDataStruct? maybeFromMap(dynamic data) => data is Map
      ? GroundContactTimeDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'foot': _foot,
        'contactTime': _contactTime,
        'timeOccurred': _timeOccurred,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'foot': serializeParam(
          _foot,
          ParamType.String,
        ),
        'contactTime': serializeParam(
          _contactTime,
          ParamType.double,
        ),
        'timeOccurred': serializeParam(
          _timeOccurred,
          ParamType.double,
        ),
      }.withoutNulls;

  static GroundContactTimeDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      GroundContactTimeDataStruct(
        foot: deserializeParam(
          data['foot'],
          ParamType.String,
          false,
        ),
        contactTime: deserializeParam(
          data['contactTime'],
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
  String toString() => 'GroundContactTimeDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GroundContactTimeDataStruct &&
        foot == other.foot &&
        contactTime == other.contactTime &&
        timeOccurred == other.timeOccurred;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([foot, contactTime, timeOccurred]);
}

GroundContactTimeDataStruct createGroundContactTimeDataStruct({
  String? foot,
  double? contactTime,
  double? timeOccurred,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    GroundContactTimeDataStruct(
      foot: foot,
      contactTime: contactTime,
      timeOccurred: timeOccurred,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

GroundContactTimeDataStruct? updateGroundContactTimeDataStruct(
  GroundContactTimeDataStruct? groundContactTimeData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    groundContactTimeData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addGroundContactTimeDataStructData(
  Map<String, dynamic> firestoreData,
  GroundContactTimeDataStruct? groundContactTimeData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (groundContactTimeData == null) {
    return;
  }
  if (groundContactTimeData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      groundContactTimeData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final groundContactTimeDataData = getGroundContactTimeDataFirestoreData(
      groundContactTimeData, forFieldValue);
  final nestedData =
      groundContactTimeDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      groundContactTimeData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getGroundContactTimeDataFirestoreData(
  GroundContactTimeDataStruct? groundContactTimeData, [
  bool forFieldValue = false,
]) {
  if (groundContactTimeData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(groundContactTimeData.toMap());

  // Add any Firestore field values
  groundContactTimeData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getGroundContactTimeDataListFirestoreData(
  List<GroundContactTimeDataStruct>? groundContactTimeDatas,
) =>
    groundContactTimeDatas
        ?.map((e) => getGroundContactTimeDataFirestoreData(e, true))
        .toList() ??
    [];
