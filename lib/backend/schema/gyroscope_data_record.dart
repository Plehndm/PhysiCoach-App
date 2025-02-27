import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GyroscopeDataRecord extends FirestoreRecord {
  GyroscopeDataRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "data" field.
  List<GyroscopeDataStruct>? _data;
  List<GyroscopeDataStruct> get data => _data ?? const [];
  bool hasData() => _data != null;

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
    _data = getStructList(
      snapshotData['data'],
      GyroscopeDataStruct.fromMap,
    );
    _id = castToType<int>(snapshotData['id']);
    _user = snapshotData['user'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('gyroscopeData')
          : FirebaseFirestore.instance.collectionGroup('gyroscopeData');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('gyroscopeData').doc(id);

  static Stream<GyroscopeDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GyroscopeDataRecord.fromSnapshot(s));

  static Future<GyroscopeDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GyroscopeDataRecord.fromSnapshot(s));

  static GyroscopeDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GyroscopeDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GyroscopeDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GyroscopeDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GyroscopeDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GyroscopeDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGyroscopeDataRecordData({
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

class GyroscopeDataRecordDocumentEquality
    implements Equality<GyroscopeDataRecord> {
  const GyroscopeDataRecordDocumentEquality();

  @override
  bool equals(GyroscopeDataRecord? e1, GyroscopeDataRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.data, e2?.data) &&
        e1?.id == e2?.id &&
        e1?.user == e2?.user;
  }

  @override
  int hash(GyroscopeDataRecord? e) =>
      const ListEquality().hash([e?.data, e?.id, e?.user]);

  @override
  bool isValidKey(Object? o) => o is GyroscopeDataRecord;
}
