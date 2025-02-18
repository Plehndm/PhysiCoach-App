import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LongJumpDataRecord extends FirestoreRecord {
  LongJumpDataRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _user = snapshotData['user'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('longJumpData');

  static Stream<LongJumpDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LongJumpDataRecord.fromSnapshot(s));

  static Future<LongJumpDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LongJumpDataRecord.fromSnapshot(s));

  static LongJumpDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LongJumpDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LongJumpDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LongJumpDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LongJumpDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LongJumpDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLongJumpDataRecordData({
  int? id,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class LongJumpDataRecordDocumentEquality
    implements Equality<LongJumpDataRecord> {
  const LongJumpDataRecordDocumentEquality();

  @override
  bool equals(LongJumpDataRecord? e1, LongJumpDataRecord? e2) {
    return e1?.id == e2?.id && e1?.user == e2?.user;
  }

  @override
  int hash(LongJumpDataRecord? e) =>
      const ListEquality().hash([e?.id, e?.user]);

  @override
  bool isValidKey(Object? o) => o is LongJumpDataRecord;
}
