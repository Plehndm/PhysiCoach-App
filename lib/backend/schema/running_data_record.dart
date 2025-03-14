import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RunningDataRecord extends FirestoreRecord {
  RunningDataRecord._(
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

  // "gaitAnalysies" field.
  List<GaitMetricsStruct>? _gaitAnalysies;
  List<GaitMetricsStruct> get gaitAnalysies => _gaitAnalysies ?? const [];
  bool hasGaitAnalysies() => _gaitAnalysies != null;

  // "runningLevels" field.
  RunningLevelsStruct? _runningLevels;
  RunningLevelsStruct get runningLevels =>
      _runningLevels ?? RunningLevelsStruct();
  bool hasRunningLevels() => _runningLevels != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _user = snapshotData['user'] as DocumentReference?;
    _gaitAnalysies = getStructList(
      snapshotData['gaitAnalysies'],
      GaitMetricsStruct.fromMap,
    );
    _runningLevels = snapshotData['runningLevels'] is RunningLevelsStruct
        ? snapshotData['runningLevels']
        : RunningLevelsStruct.maybeFromMap(snapshotData['runningLevels']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('runningData');

  static Stream<RunningDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RunningDataRecord.fromSnapshot(s));

  static Future<RunningDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RunningDataRecord.fromSnapshot(s));

  static RunningDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RunningDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RunningDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RunningDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RunningDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RunningDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRunningDataRecordData({
  int? id,
  DocumentReference? user,
  RunningLevelsStruct? runningLevels,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'user': user,
      'runningLevels': RunningLevelsStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "runningLevels" field.
  addRunningLevelsStructData(firestoreData, runningLevels, 'runningLevels');

  return firestoreData;
}

class RunningDataRecordDocumentEquality implements Equality<RunningDataRecord> {
  const RunningDataRecordDocumentEquality();

  @override
  bool equals(RunningDataRecord? e1, RunningDataRecord? e2) {
    const listEquality = ListEquality();
    return e1?.id == e2?.id &&
        e1?.user == e2?.user &&
        listEquality.equals(e1?.gaitAnalysies, e2?.gaitAnalysies) &&
        e1?.runningLevels == e2?.runningLevels;
  }

  @override
  int hash(RunningDataRecord? e) => const ListEquality()
      .hash([e?.id, e?.user, e?.gaitAnalysies, e?.runningLevels]);

  @override
  bool isValidKey(Object? o) => o is RunningDataRecord;
}
