// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class TrippleJumpLevelsStruct extends FFFirebaseStruct {
  TrippleJumpLevelsStruct({
    int? test,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _test = test,
        super(firestoreUtilData);

  // "Test" field.
  int? _test;
  int get test => _test ?? 0;
  set test(int? val) => _test = val;

  void incrementTest(int amount) => test = test + amount;

  bool hasTest() => _test != null;

  static TrippleJumpLevelsStruct fromMap(Map<String, dynamic> data) =>
      TrippleJumpLevelsStruct(
        test: castToType<int>(data['Test']),
      );

  static TrippleJumpLevelsStruct? maybeFromMap(dynamic data) => data is Map
      ? TrippleJumpLevelsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Test': _test,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Test': serializeParam(
          _test,
          ParamType.int,
        ),
      }.withoutNulls;

  static TrippleJumpLevelsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TrippleJumpLevelsStruct(
        test: deserializeParam(
          data['Test'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'TrippleJumpLevelsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TrippleJumpLevelsStruct && test == other.test;
  }

  @override
  int get hashCode => const ListEquality().hash([test]);
}

TrippleJumpLevelsStruct createTrippleJumpLevelsStruct({
  int? test,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TrippleJumpLevelsStruct(
      test: test,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TrippleJumpLevelsStruct? updateTrippleJumpLevelsStruct(
  TrippleJumpLevelsStruct? trippleJumpLevels, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    trippleJumpLevels
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTrippleJumpLevelsStructData(
  Map<String, dynamic> firestoreData,
  TrippleJumpLevelsStruct? trippleJumpLevels,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (trippleJumpLevels == null) {
    return;
  }
  if (trippleJumpLevels.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && trippleJumpLevels.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final trippleJumpLevelsData =
      getTrippleJumpLevelsFirestoreData(trippleJumpLevels, forFieldValue);
  final nestedData =
      trippleJumpLevelsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = trippleJumpLevels.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTrippleJumpLevelsFirestoreData(
  TrippleJumpLevelsStruct? trippleJumpLevels, [
  bool forFieldValue = false,
]) {
  if (trippleJumpLevels == null) {
    return {};
  }
  final firestoreData = mapToFirestore(trippleJumpLevels.toMap());

  // Add any Firestore field values
  trippleJumpLevels.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTrippleJumpLevelsListFirestoreData(
  List<TrippleJumpLevelsStruct>? trippleJumpLevelss,
) =>
    trippleJumpLevelss
        ?.map((e) => getTrippleJumpLevelsFirestoreData(e, true))
        .toList() ??
    [];
