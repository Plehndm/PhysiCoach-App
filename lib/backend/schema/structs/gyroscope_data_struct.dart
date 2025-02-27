// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class GyroscopeDataStruct extends FFFirebaseStruct {
  GyroscopeDataStruct({
    double? xGyro,
    double? yGyro,
    double? zGyro,
    DateTime? timestamp,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _xGyro = xGyro,
        _yGyro = yGyro,
        _zGyro = zGyro,
        _timestamp = timestamp,
        super(firestoreUtilData);

  // "xGyro" field.
  double? _xGyro;
  double get xGyro => _xGyro ?? 0.0;
  set xGyro(double? val) => _xGyro = val;

  void incrementXGyro(double amount) => xGyro = xGyro + amount;

  bool hasXGyro() => _xGyro != null;

  // "yGyro" field.
  double? _yGyro;
  double get yGyro => _yGyro ?? 0.0;
  set yGyro(double? val) => _yGyro = val;

  void incrementYGyro(double amount) => yGyro = yGyro + amount;

  bool hasYGyro() => _yGyro != null;

  // "zGyro" field.
  double? _zGyro;
  double get zGyro => _zGyro ?? 0.0;
  set zGyro(double? val) => _zGyro = val;

  void incrementZGyro(double amount) => zGyro = zGyro + amount;

  bool hasZGyro() => _zGyro != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime get timestamp =>
      _timestamp ?? DateTime.fromMicrosecondsSinceEpoch(1740466800000000);
  set timestamp(DateTime? val) => _timestamp = val;

  bool hasTimestamp() => _timestamp != null;

  static GyroscopeDataStruct fromMap(Map<String, dynamic> data) =>
      GyroscopeDataStruct(
        xGyro: castToType<double>(data['xGyro']),
        yGyro: castToType<double>(data['yGyro']),
        zGyro: castToType<double>(data['zGyro']),
        timestamp: data['timestamp'] as DateTime?,
      );

  static GyroscopeDataStruct? maybeFromMap(dynamic data) => data is Map
      ? GyroscopeDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'xGyro': _xGyro,
        'yGyro': _yGyro,
        'zGyro': _zGyro,
        'timestamp': _timestamp,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'xGyro': serializeParam(
          _xGyro,
          ParamType.double,
        ),
        'yGyro': serializeParam(
          _yGyro,
          ParamType.double,
        ),
        'zGyro': serializeParam(
          _zGyro,
          ParamType.double,
        ),
        'timestamp': serializeParam(
          _timestamp,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static GyroscopeDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      GyroscopeDataStruct(
        xGyro: deserializeParam(
          data['xGyro'],
          ParamType.double,
          false,
        ),
        yGyro: deserializeParam(
          data['yGyro'],
          ParamType.double,
          false,
        ),
        zGyro: deserializeParam(
          data['zGyro'],
          ParamType.double,
          false,
        ),
        timestamp: deserializeParam(
          data['timestamp'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'GyroscopeDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GyroscopeDataStruct &&
        xGyro == other.xGyro &&
        yGyro == other.yGyro &&
        zGyro == other.zGyro &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([xGyro, yGyro, zGyro, timestamp]);
}

GyroscopeDataStruct createGyroscopeDataStruct({
  double? xGyro,
  double? yGyro,
  double? zGyro,
  DateTime? timestamp,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    GyroscopeDataStruct(
      xGyro: xGyro,
      yGyro: yGyro,
      zGyro: zGyro,
      timestamp: timestamp,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

GyroscopeDataStruct? updateGyroscopeDataStruct(
  GyroscopeDataStruct? gyroscopeData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    gyroscopeData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addGyroscopeDataStructData(
  Map<String, dynamic> firestoreData,
  GyroscopeDataStruct? gyroscopeData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (gyroscopeData == null) {
    return;
  }
  if (gyroscopeData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && gyroscopeData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final gyroscopeDataData =
      getGyroscopeDataFirestoreData(gyroscopeData, forFieldValue);
  final nestedData =
      gyroscopeDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = gyroscopeData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getGyroscopeDataFirestoreData(
  GyroscopeDataStruct? gyroscopeData, [
  bool forFieldValue = false,
]) {
  if (gyroscopeData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(gyroscopeData.toMap());

  // Add any Firestore field values
  gyroscopeData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getGyroscopeDataListFirestoreData(
  List<GyroscopeDataStruct>? gyroscopeDatas,
) =>
    gyroscopeDatas
        ?.map((e) => getGyroscopeDataFirestoreData(e, true))
        .toList() ??
    [];
