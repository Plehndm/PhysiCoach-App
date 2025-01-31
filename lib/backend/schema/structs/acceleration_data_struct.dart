// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AccelerationDataStruct extends FFFirebaseStruct {
  AccelerationDataStruct({
    double? xAccel,
    double? yAccel,
    double? zAccel,
    double? duration,
    double? timeOccurred,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _xAccel = xAccel,
        _yAccel = yAccel,
        _zAccel = zAccel,
        _duration = duration,
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

  // "duration" field.
  double? _duration;
  double get duration => _duration ?? 1.0;
  set duration(double? val) => _duration = val;

  void incrementDuration(double amount) => duration = duration + amount;

  bool hasDuration() => _duration != null;

  // "timeOccurred" field.
  double? _timeOccurred;
  double get timeOccurred => _timeOccurred ?? 0.0;
  set timeOccurred(double? val) => _timeOccurred = val;

  void incrementTimeOccurred(double amount) =>
      timeOccurred = timeOccurred + amount;

  bool hasTimeOccurred() => _timeOccurred != null;

  static AccelerationDataStruct fromMap(Map<String, dynamic> data) =>
      AccelerationDataStruct(
        xAccel: castToType<double>(data['x-accel']),
        yAccel: castToType<double>(data['y-accel']),
        zAccel: castToType<double>(data['z-accel']),
        duration: castToType<double>(data['duration']),
        timeOccurred: castToType<double>(data['timeOccurred']),
      );

  static AccelerationDataStruct? maybeFromMap(dynamic data) => data is Map
      ? AccelerationDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'x-accel': _xAccel,
        'y-accel': _yAccel,
        'z-accel': _zAccel,
        'duration': _duration,
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
        'duration': serializeParam(
          _duration,
          ParamType.double,
        ),
        'timeOccurred': serializeParam(
          _timeOccurred,
          ParamType.double,
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
        duration: deserializeParam(
          data['duration'],
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
  String toString() => 'AccelerationDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AccelerationDataStruct &&
        xAccel == other.xAccel &&
        yAccel == other.yAccel &&
        zAccel == other.zAccel &&
        duration == other.duration &&
        timeOccurred == other.timeOccurred;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([xAccel, yAccel, zAccel, duration, timeOccurred]);
}

AccelerationDataStruct createAccelerationDataStruct({
  double? xAccel,
  double? yAccel,
  double? zAccel,
  double? duration,
  double? timeOccurred,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AccelerationDataStruct(
      xAccel: xAccel,
      yAccel: yAccel,
      zAccel: zAccel,
      duration: duration,
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
