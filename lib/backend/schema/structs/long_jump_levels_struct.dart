// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class LongJumpLevelsStruct extends FFFirebaseStruct {
  LongJumpLevelsStruct({
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

  static LongJumpLevelsStruct fromMap(Map<String, dynamic> data) =>
      LongJumpLevelsStruct(
        test: castToType<int>(data['Test']),
      );

  static LongJumpLevelsStruct? maybeFromMap(dynamic data) => data is Map
      ? LongJumpLevelsStruct.fromMap(data.cast<String, dynamic>())
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

  static LongJumpLevelsStruct fromSerializableMap(Map<String, dynamic> data) =>
      LongJumpLevelsStruct(
        test: deserializeParam(
          data['Test'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'LongJumpLevelsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LongJumpLevelsStruct && test == other.test;
  }

  @override
  int get hashCode => const ListEquality().hash([test]);
}

LongJumpLevelsStruct createLongJumpLevelsStruct({
  int? test,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LongJumpLevelsStruct(
      test: test,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LongJumpLevelsStruct? updateLongJumpLevelsStruct(
  LongJumpLevelsStruct? longJumpLevels, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    longJumpLevels
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLongJumpLevelsStructData(
  Map<String, dynamic> firestoreData,
  LongJumpLevelsStruct? longJumpLevels,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (longJumpLevels == null) {
    return;
  }
  if (longJumpLevels.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && longJumpLevels.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final longJumpLevelsData =
      getLongJumpLevelsFirestoreData(longJumpLevels, forFieldValue);
  final nestedData =
      longJumpLevelsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = longJumpLevels.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLongJumpLevelsFirestoreData(
  LongJumpLevelsStruct? longJumpLevels, [
  bool forFieldValue = false,
]) {
  if (longJumpLevels == null) {
    return {};
  }
  final firestoreData = mapToFirestore(longJumpLevels.toMap());

  // Add any Firestore field values
  longJumpLevels.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLongJumpLevelsListFirestoreData(
  List<LongJumpLevelsStruct>? longJumpLevelss,
) =>
    longJumpLevelss
        ?.map((e) => getLongJumpLevelsFirestoreData(e, true))
        .toList() ??
    [];
