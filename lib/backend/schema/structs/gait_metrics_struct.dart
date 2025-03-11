// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class GaitMetricsStruct extends FFFirebaseStruct {
  GaitMetricsStruct({
    double? strideLength,
    double? groundContactTime,
    double? verticalRatio,
    double? asymmetry,
    DateTime? timestamp,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _strideLength = strideLength,
        _groundContactTime = groundContactTime,
        _verticalRatio = verticalRatio,
        _asymmetry = asymmetry,
        _timestamp = timestamp,
        super(firestoreUtilData);

  // "strideLength" field.
  double? _strideLength;
  double get strideLength => _strideLength ?? 29.0;
  set strideLength(double? val) => _strideLength = val;

  void incrementStrideLength(double amount) =>
      strideLength = strideLength + amount;

  bool hasStrideLength() => _strideLength != null;

  // "groundContactTime" field.
  double? _groundContactTime;
  double get groundContactTime => _groundContactTime ?? 200.0;
  set groundContactTime(double? val) => _groundContactTime = val;

  void incrementGroundContactTime(double amount) =>
      groundContactTime = groundContactTime + amount;

  bool hasGroundContactTime() => _groundContactTime != null;

  // "verticalRatio" field.
  double? _verticalRatio;
  double get verticalRatio => _verticalRatio ?? 10.0;
  set verticalRatio(double? val) => _verticalRatio = val;

  void incrementVerticalRatio(double amount) =>
      verticalRatio = verticalRatio + amount;

  bool hasVerticalRatio() => _verticalRatio != null;

  // "asymmetry" field.
  double? _asymmetry;
  double get asymmetry => _asymmetry ?? 50.0;
  set asymmetry(double? val) => _asymmetry = val;

  void incrementAsymmetry(double amount) => asymmetry = asymmetry + amount;

  bool hasAsymmetry() => _asymmetry != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime get timestamp =>
      _timestamp ?? DateTime.fromMicrosecondsSinceEpoch(1741071600000000);
  set timestamp(DateTime? val) => _timestamp = val;

  bool hasTimestamp() => _timestamp != null;

  static GaitMetricsStruct fromMap(Map<String, dynamic> data) =>
      GaitMetricsStruct(
        strideLength: castToType<double>(data['strideLength']),
        groundContactTime: castToType<double>(data['groundContactTime']),
        verticalRatio: castToType<double>(data['verticalRatio']),
        asymmetry: castToType<double>(data['asymmetry']),
        timestamp: data['timestamp'] as DateTime?,
      );

  static GaitMetricsStruct? maybeFromMap(dynamic data) => data is Map
      ? GaitMetricsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'strideLength': _strideLength,
        'groundContactTime': _groundContactTime,
        'verticalRatio': _verticalRatio,
        'asymmetry': _asymmetry,
        'timestamp': _timestamp,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'strideLength': serializeParam(
          _strideLength,
          ParamType.double,
        ),
        'groundContactTime': serializeParam(
          _groundContactTime,
          ParamType.double,
        ),
        'verticalRatio': serializeParam(
          _verticalRatio,
          ParamType.double,
        ),
        'asymmetry': serializeParam(
          _asymmetry,
          ParamType.double,
        ),
        'timestamp': serializeParam(
          _timestamp,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static GaitMetricsStruct fromSerializableMap(Map<String, dynamic> data) =>
      GaitMetricsStruct(
        strideLength: deserializeParam(
          data['strideLength'],
          ParamType.double,
          false,
        ),
        groundContactTime: deserializeParam(
          data['groundContactTime'],
          ParamType.double,
          false,
        ),
        verticalRatio: deserializeParam(
          data['verticalRatio'],
          ParamType.double,
          false,
        ),
        asymmetry: deserializeParam(
          data['asymmetry'],
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
  String toString() => 'GaitMetricsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GaitMetricsStruct &&
        strideLength == other.strideLength &&
        groundContactTime == other.groundContactTime &&
        verticalRatio == other.verticalRatio &&
        asymmetry == other.asymmetry &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [strideLength, groundContactTime, verticalRatio, asymmetry, timestamp]);
}

GaitMetricsStruct createGaitMetricsStruct({
  double? strideLength,
  double? groundContactTime,
  double? verticalRatio,
  double? asymmetry,
  DateTime? timestamp,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    GaitMetricsStruct(
      strideLength: strideLength,
      groundContactTime: groundContactTime,
      verticalRatio: verticalRatio,
      asymmetry: asymmetry,
      timestamp: timestamp,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

GaitMetricsStruct? updateGaitMetricsStruct(
  GaitMetricsStruct? gaitMetrics, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    gaitMetrics
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addGaitMetricsStructData(
  Map<String, dynamic> firestoreData,
  GaitMetricsStruct? gaitMetrics,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (gaitMetrics == null) {
    return;
  }
  if (gaitMetrics.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && gaitMetrics.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final gaitMetricsData =
      getGaitMetricsFirestoreData(gaitMetrics, forFieldValue);
  final nestedData =
      gaitMetricsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = gaitMetrics.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getGaitMetricsFirestoreData(
  GaitMetricsStruct? gaitMetrics, [
  bool forFieldValue = false,
]) {
  if (gaitMetrics == null) {
    return {};
  }
  final firestoreData = mapToFirestore(gaitMetrics.toMap());

  // Add any Firestore field values
  gaitMetrics.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getGaitMetricsListFirestoreData(
  List<GaitMetricsStruct>? gaitMetricss,
) =>
    gaitMetricss?.map((e) => getGaitMetricsFirestoreData(e, true)).toList() ??
    [];
