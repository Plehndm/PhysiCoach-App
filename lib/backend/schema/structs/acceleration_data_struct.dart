// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AccelerationDataStruct extends FFFirebaseStruct {
  AccelerationDataStruct({
    double? xAccel,
    double? yAccel,
    double? zAccel,
    DateTime? timestamp,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _xAccel = xAccel,
        _yAccel = yAccel,
        _zAccel = zAccel,
        _timestamp = timestamp,
        super(firestoreUtilData);

  // "xAccel" field.
  double? _xAccel;
  double get xAccel => _xAccel ?? 0.0;
  set xAccel(double? val) => _xAccel = val;

  void incrementXAccel(double amount) => xAccel = xAccel + amount;

  bool hasXAccel() => _xAccel != null;

  // "yAccel" field.
  double? _yAccel;
  double get yAccel => _yAccel ?? 0.0;
  set yAccel(double? val) => _yAccel = val;

  void incrementYAccel(double amount) => yAccel = yAccel + amount;

  bool hasYAccel() => _yAccel != null;

  // "zAccel" field.
  double? _zAccel;
  double get zAccel => _zAccel ?? 0.0;
  set zAccel(double? val) => _zAccel = val;

  void incrementZAccel(double amount) => zAccel = zAccel + amount;

  bool hasZAccel() => _zAccel != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime get timestamp =>
      _timestamp ?? DateTime.fromMicrosecondsSinceEpoch(1738306800000000);
  set timestamp(DateTime? val) => _timestamp = val;

  bool hasTimestamp() => _timestamp != null;

  static AccelerationDataStruct fromMap(Map<String, dynamic> data) =>
      AccelerationDataStruct(
        xAccel: castToType<double>(data['xAccel']),
        yAccel: castToType<double>(data['yAccel']),
        zAccel: castToType<double>(data['zAccel']),
        timestamp: data['timestamp'] as DateTime?,
      );

  static AccelerationDataStruct? maybeFromMap(dynamic data) => data is Map
      ? AccelerationDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'xAccel': _xAccel,
        'yAccel': _yAccel,
        'zAccel': _zAccel,
        'timestamp': _timestamp,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'xAccel': serializeParam(
          _xAccel,
          ParamType.double,
        ),
        'yAccel': serializeParam(
          _yAccel,
          ParamType.double,
        ),
        'zAccel': serializeParam(
          _zAccel,
          ParamType.double,
        ),
        'timestamp': serializeParam(
          _timestamp,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static AccelerationDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AccelerationDataStruct(
        xAccel: deserializeParam(
          data['xAccel'],
          ParamType.double,
          false,
        ),
        yAccel: deserializeParam(
          data['yAccel'],
          ParamType.double,
          false,
        ),
        zAccel: deserializeParam(
          data['zAccel'],
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
  String toString() => 'AccelerationDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AccelerationDataStruct &&
        xAccel == other.xAccel &&
        yAccel == other.yAccel &&
        zAccel == other.zAccel &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([xAccel, yAccel, zAccel, timestamp]);
}

AccelerationDataStruct createAccelerationDataStruct({
  double? xAccel,
  double? yAccel,
  double? zAccel,
  DateTime? timestamp,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AccelerationDataStruct(
      xAccel: xAccel,
      yAccel: yAccel,
      zAccel: zAccel,
      timestamp: timestamp,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AccelerationDataStruct? updateAccelerationDataStruct(
  AccelerationDataStruct? accelerationData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    accelerationData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAccelerationDataStructData(
  Map<String, dynamic> firestoreData,
  AccelerationDataStruct? accelerationData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (accelerationData == null) {
    return;
  }
  if (accelerationData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && accelerationData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final accelerationDataData =
      getAccelerationDataFirestoreData(accelerationData, forFieldValue);
  final nestedData =
      accelerationDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = accelerationData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAccelerationDataFirestoreData(
  AccelerationDataStruct? accelerationData, [
  bool forFieldValue = false,
]) {
  if (accelerationData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(accelerationData.toMap());

  // Add any Firestore field values
  accelerationData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAccelerationDataListFirestoreData(
  List<AccelerationDataStruct>? accelerationDatas,
) =>
    accelerationDatas
        ?.map((e) => getAccelerationDataFirestoreData(e, true))
        .toList() ??
    [];
