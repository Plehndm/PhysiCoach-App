// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AccelerationDataStruct extends FFFirebaseStruct {
  AccelerationDataStruct({
    double? xAccel,
    double? yAccel,
    double? zAccel,
    int? durrationMilliSec,
    DateTime? timeOccurred,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _xAccel = xAccel,
        _yAccel = yAccel,
        _zAccel = zAccel,
        _durrationMilliSec = durrationMilliSec,
        _timeOccurred = timeOccurred,
        super(firestoreUtilData);

  // "x-accel" field.
  double? _xAccel;
  double get xAccel => _xAccel ?? 0.0;
  set xAccel(double? val) => _xAccel = val;

  void incrementXAccel(double amount) => xAccel = xAccel + amount;

  bool hasXAccel() => _xAccel != null;

  // "y-accel" field.
  double? _yAccel;
  double get yAccel => _yAccel ?? 0.0;
  set yAccel(double? val) => _yAccel = val;

  void incrementYAccel(double amount) => yAccel = yAccel + amount;

  bool hasYAccel() => _yAccel != null;

  // "z-accel" field.
  double? _zAccel;
  double get zAccel => _zAccel ?? 0.0;
  set zAccel(double? val) => _zAccel = val;

  void incrementZAccel(double amount) => zAccel = zAccel + amount;

  bool hasZAccel() => _zAccel != null;

  // "durrationMilliSec" field.
  int? _durrationMilliSec;
  int get durrationMilliSec => _durrationMilliSec ?? 0;
  set durrationMilliSec(int? val) => _durrationMilliSec = val;

  void incrementDurrationMilliSec(int amount) =>
      durrationMilliSec = durrationMilliSec + amount;

  bool hasDurrationMilliSec() => _durrationMilliSec != null;

  // "timeOccurred" field.
  DateTime? _timeOccurred;
  DateTime get timeOccurred =>
      _timeOccurred ?? DateTime.fromMicrosecondsSinceEpoch(1738306800000000);
  set timeOccurred(DateTime? val) => _timeOccurred = val;

  bool hasTimeOccurred() => _timeOccurred != null;

  static AccelerationDataStruct fromMap(Map<String, dynamic> data) =>
      AccelerationDataStruct(
        xAccel: castToType<double>(data['x-accel']),
        yAccel: castToType<double>(data['y-accel']),
        zAccel: castToType<double>(data['z-accel']),
        durrationMilliSec: castToType<int>(data['durrationMilliSec']),
        timeOccurred: data['timeOccurred'] as DateTime?,
      );

  static AccelerationDataStruct? maybeFromMap(dynamic data) => data is Map
      ? AccelerationDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'x-accel': _xAccel,
        'y-accel': _yAccel,
        'z-accel': _zAccel,
        'durrationMilliSec': _durrationMilliSec,
        'timeOccurred': _timeOccurred,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'x-accel': serializeParam(
          _xAccel,
          ParamType.double,
        ),
        'y-accel': serializeParam(
          _yAccel,
          ParamType.double,
        ),
        'z-accel': serializeParam(
          _zAccel,
          ParamType.double,
        ),
        'durrationMilliSec': serializeParam(
          _durrationMilliSec,
          ParamType.int,
        ),
        'timeOccurred': serializeParam(
          _timeOccurred,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static AccelerationDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AccelerationDataStruct(
        xAccel: deserializeParam(
          data['x-accel'],
          ParamType.double,
          false,
        ),
        yAccel: deserializeParam(
          data['y-accel'],
          ParamType.double,
          false,
        ),
        zAccel: deserializeParam(
          data['z-accel'],
          ParamType.double,
          false,
        ),
        durrationMilliSec: deserializeParam(
          data['durrationMilliSec'],
          ParamType.int,
          false,
        ),
        timeOccurred: deserializeParam(
          data['timeOccurred'],
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
        durrationMilliSec == other.durrationMilliSec &&
        timeOccurred == other.timeOccurred;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([xAccel, yAccel, zAccel, durrationMilliSec, timeOccurred]);
}

AccelerationDataStruct createAccelerationDataStruct({
  double? xAccel,
  double? yAccel,
  double? zAccel,
  int? durrationMilliSec,
  DateTime? timeOccurred,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AccelerationDataStruct(
      xAccel: xAccel,
      yAccel: yAccel,
      zAccel: zAccel,
      durrationMilliSec: durrationMilliSec,
      timeOccurred: timeOccurred,
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
