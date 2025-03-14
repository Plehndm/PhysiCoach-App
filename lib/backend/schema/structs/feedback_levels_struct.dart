// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class FeedbackLevelsStruct extends FFFirebaseStruct {
  FeedbackLevelsStruct({
    double? great,
    double? good,
    double? improve,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _great = great,
        _good = good,
        _improve = improve,
        super(firestoreUtilData);

  // "great" field.
  double? _great;
  double get great => _great ?? 2.0;
  set great(double? val) => _great = val;

  void incrementGreat(double amount) => great = great + amount;

  bool hasGreat() => _great != null;

  // "good" field.
  double? _good;
  double get good => _good ?? 1.0;
  set good(double? val) => _good = val;

  void incrementGood(double amount) => good = good + amount;

  bool hasGood() => _good != null;

  // "improve" field.
  double? _improve;
  double get improve => _improve ?? 0.0;
  set improve(double? val) => _improve = val;

  void incrementImprove(double amount) => improve = improve + amount;

  bool hasImprove() => _improve != null;

  static FeedbackLevelsStruct fromMap(Map<String, dynamic> data) =>
      FeedbackLevelsStruct(
        great: castToType<double>(data['great']),
        good: castToType<double>(data['good']),
        improve: castToType<double>(data['improve']),
      );

  static FeedbackLevelsStruct? maybeFromMap(dynamic data) => data is Map
      ? FeedbackLevelsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'great': _great,
        'good': _good,
        'improve': _improve,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'great': serializeParam(
          _great,
          ParamType.double,
        ),
        'good': serializeParam(
          _good,
          ParamType.double,
        ),
        'improve': serializeParam(
          _improve,
          ParamType.double,
        ),
      }.withoutNulls;

  static FeedbackLevelsStruct fromSerializableMap(Map<String, dynamic> data) =>
      FeedbackLevelsStruct(
        great: deserializeParam(
          data['great'],
          ParamType.double,
          false,
        ),
        good: deserializeParam(
          data['good'],
          ParamType.double,
          false,
        ),
        improve: deserializeParam(
          data['improve'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'FeedbackLevelsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FeedbackLevelsStruct &&
        great == other.great &&
        good == other.good &&
        improve == other.improve;
  }

  @override
  int get hashCode => const ListEquality().hash([great, good, improve]);
}

FeedbackLevelsStruct createFeedbackLevelsStruct({
  double? great,
  double? good,
  double? improve,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FeedbackLevelsStruct(
      great: great,
      good: good,
      improve: improve,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FeedbackLevelsStruct? updateFeedbackLevelsStruct(
  FeedbackLevelsStruct? feedbackLevels, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    feedbackLevels
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFeedbackLevelsStructData(
  Map<String, dynamic> firestoreData,
  FeedbackLevelsStruct? feedbackLevels,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (feedbackLevels == null) {
    return;
  }
  if (feedbackLevels.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && feedbackLevels.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final feedbackLevelsData =
      getFeedbackLevelsFirestoreData(feedbackLevels, forFieldValue);
  final nestedData =
      feedbackLevelsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = feedbackLevels.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFeedbackLevelsFirestoreData(
  FeedbackLevelsStruct? feedbackLevels, [
  bool forFieldValue = false,
]) {
  if (feedbackLevels == null) {
    return {};
  }
  final firestoreData = mapToFirestore(feedbackLevels.toMap());

  // Add any Firestore field values
  feedbackLevels.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFeedbackLevelsListFirestoreData(
  List<FeedbackLevelsStruct>? feedbackLevelss,
) =>
    feedbackLevelss
        ?.map((e) => getFeedbackLevelsFirestoreData(e, true))
        .toList() ??
    [];
