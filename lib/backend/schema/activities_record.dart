import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ActivitiesRecord extends FirestoreRecord {
  ActivitiesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "type" field.
  ActivityTypes? _type;
  ActivityTypes? get type => _type;
  bool hasType() => _type != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "seconds" field.
  int? _seconds;
  int get seconds => _seconds ?? 0;
  bool hasSeconds() => _seconds != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "completed" field.
  bool? _completed;
  bool get completed => _completed ?? false;
  bool hasCompleted() => _completed != null;

  // "date" field.
  DateStruct? _date;
  DateStruct get date => _date ?? DateStruct();
  bool hasDate() => _date != null;

  void _initializeFields() {
    _type = snapshotData['type'] is ActivityTypes
        ? snapshotData['type']
        : deserializeEnum<ActivityTypes>(snapshotData['type']);
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _seconds = castToType<int>(snapshotData['seconds']);
    _id = castToType<int>(snapshotData['id']);
    _completed = snapshotData['completed'] as bool?;
    _date = snapshotData['date'] is DateStruct
        ? snapshotData['date']
        : DateStruct.maybeFromMap(snapshotData['date']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('activities');

  static Stream<ActivitiesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ActivitiesRecord.fromSnapshot(s));

  static Future<ActivitiesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ActivitiesRecord.fromSnapshot(s));

  static ActivitiesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ActivitiesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ActivitiesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ActivitiesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ActivitiesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ActivitiesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createActivitiesRecordData({
  ActivityTypes? type,
  String? title,
  String? description,
  DocumentReference? user,
  int? seconds,
  int? id,
  bool? completed,
  DateStruct? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type': type,
      'title': title,
      'description': description,
      'user': user,
      'seconds': seconds,
      'id': id,
      'completed': completed,
      'date': DateStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "date" field.
  addDateStructData(firestoreData, date, 'date');

  return firestoreData;
}

class ActivitiesRecordDocumentEquality implements Equality<ActivitiesRecord> {
  const ActivitiesRecordDocumentEquality();

  @override
  bool equals(ActivitiesRecord? e1, ActivitiesRecord? e2) {
    return e1?.type == e2?.type &&
        e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.user == e2?.user &&
        e1?.seconds == e2?.seconds &&
        e1?.id == e2?.id &&
        e1?.completed == e2?.completed &&
        e1?.date == e2?.date;
  }

  @override
  int hash(ActivitiesRecord? e) => const ListEquality().hash([
        e?.type,
        e?.title,
        e?.description,
        e?.user,
        e?.seconds,
        e?.id,
        e?.completed,
        e?.date
      ]);

  @override
  bool isValidKey(Object? o) => o is ActivitiesRecord;
}
