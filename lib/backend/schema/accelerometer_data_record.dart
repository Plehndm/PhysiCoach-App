import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AccelerometerDataRecord extends FirestoreRecord {
  AccelerometerDataRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "accelerations" field.
  List<AccelerationDataStruct>? _accelerations;
  List<AccelerationDataStruct> get accelerations => _accelerations ?? const [];
  bool hasAccelerations() => _accelerations != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _accelerations = getStructList(
      snapshotData['accelerations'],
      AccelerationDataStruct.fromMap,
    );
    _id = castToType<int>(snapshotData['id']);
    _user = snapshotData['user'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('accelerometerData')
          : FirebaseFirestore.instance.collectionGroup('accelerometerData');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('accelerometerData').doc(id);

  static Stream<AccelerometerDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AccelerometerDataRecord.fromSnapshot(s));

  static Future<AccelerometerDataRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AccelerometerDataRecord.fromSnapshot(s));

  static AccelerometerDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AccelerometerDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AccelerometerDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AccelerometerDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AccelerometerDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AccelerometerDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAccelerometerDataRecordData({
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

class AccelerometerDataRecordDocumentEquality
    implements Equality<AccelerometerDataRecord> {
  const AccelerometerDataRecordDocumentEquality();

  @override
  bool equals(AccelerometerDataRecord? e1, AccelerometerDataRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.accelerations, e2?.accelerations) &&
        e1?.id == e2?.id &&
        e1?.user == e2?.user;
  }

  @override
  int hash(AccelerometerDataRecord? e) =>
      const ListEquality().hash([e?.accelerations, e?.id, e?.user]);

  @override
  bool isValidKey(Object? o) => o is AccelerometerDataRecord;
}
