// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class DateStruct extends FFFirebaseStruct {
  DateStruct({
    int? day,
    int? month,
    int? year,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _day = day,
        _month = month,
        _year = year,
        super(firestoreUtilData);

  // "day" field.
  int? _day;
  int get day => _day ?? 1;
  set day(int? val) => _day = val;

  void incrementDay(int amount) => day = day + amount;

  bool hasDay() => _day != null;

  // "month" field.
  int? _month;
  int get month => _month ?? 1;
  set month(int? val) => _month = val;

  void incrementMonth(int amount) => month = month + amount;

  bool hasMonth() => _month != null;

  // "year" field.
  int? _year;
  int get year => _year ?? 1;
  set year(int? val) => _year = val;

  void incrementYear(int amount) => year = year + amount;

  bool hasYear() => _year != null;

  static DateStruct fromMap(Map<String, dynamic> data) => DateStruct(
        day: castToType<int>(data['day']),
        month: castToType<int>(data['month']),
        year: castToType<int>(data['year']),
      );

  static DateStruct? maybeFromMap(dynamic data) =>
      data is Map ? DateStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'day': _day,
        'month': _month,
        'year': _year,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'day': serializeParam(
          _day,
          ParamType.int,
        ),
        'month': serializeParam(
          _month,
          ParamType.int,
        ),
        'year': serializeParam(
          _year,
          ParamType.int,
        ),
      }.withoutNulls;

  static DateStruct fromSerializableMap(Map<String, dynamic> data) =>
      DateStruct(
        day: deserializeParam(
          data['day'],
          ParamType.int,
          false,
        ),
        month: deserializeParam(
          data['month'],
          ParamType.int,
          false,
        ),
        year: deserializeParam(
          data['year'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DateStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DateStruct &&
        day == other.day &&
        month == other.month &&
        year == other.year;
  }

  @override
  int get hashCode => const ListEquality().hash([day, month, year]);
}

DateStruct createDateStruct({
  int? day,
  int? month,
  int? year,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DateStruct(
      day: day,
      month: month,
      year: year,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DateStruct? updateDateStruct(
  DateStruct? date, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    date
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDateStructData(
  Map<String, dynamic> firestoreData,
  DateStruct? date,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (date == null) {
    return;
  }
  if (date.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && date.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dateData = getDateFirestoreData(date, forFieldValue);
  final nestedData = dateData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = date.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDateFirestoreData(
  DateStruct? date, [
  bool forFieldValue = false,
]) {
  if (date == null) {
    return {};
  }
  final firestoreData = mapToFirestore(date.toMap());

  // Add any Firestore field values
  date.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDateListFirestoreData(
  List<DateStruct>? dates,
) =>
    dates?.map((e) => getDateFirestoreData(e, true)).toList() ?? [];
