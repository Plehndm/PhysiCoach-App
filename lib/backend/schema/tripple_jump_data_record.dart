import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrippleJumpDataRecord extends FirestoreRecord {
  TrippleJumpDataRecord._(
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
      FirebaseFirestore.instance.collection('trippleJumpData');

  static Stream<TrippleJumpDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TrippleJumpDataRecord.fromSnapshot(s));

  static Future<TrippleJumpDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TrippleJumpDataRecord.fromSnapshot(s));

  static TrippleJumpDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TrippleJumpDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TrippleJumpDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TrippleJumpDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TrippleJumpDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TrippleJumpDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTrippleJumpDataRecordData({
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

class TrippleJumpDataRecordDocumentEquality
    implements Equality<TrippleJumpDataRecord> {
  const TrippleJumpDataRecordDocumentEquality();

  @override
  bool equals(TrippleJumpDataRecord? e1, TrippleJumpDataRecord? e2) {
    return e1?.id == e2?.id && e1?.user == e2?.user;
  }

  @override
  int hash(TrippleJumpDataRecord? e) =>
      const ListEquality().hash([e?.id, e?.user]);

  @override
  bool isValidKey(Object? o) => o is TrippleJumpDataRecord;
}
