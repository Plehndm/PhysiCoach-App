import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RunningDataRecord extends FirestoreRecord {
  RunningDataRecord._(
    super.reference,
    super.data,
  ) {
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

  // "asymmetry" field.
  List<AsymmetryDataStruct>? _asymmetry;
  List<AsymmetryDataStruct> get asymmetry => _asymmetry ?? const [];
  bool hasAsymmetry() => _asymmetry != null;

  // "verticalRatio" field.
  List<VerticalRatioDataStruct>? _verticalRatio;
  List<VerticalRatioDataStruct> get verticalRatio => _verticalRatio ?? const [];
  bool hasVerticalRatio() => _verticalRatio != null;

  // "strideLength" field.
  List<StrideLengthDataStruct>? _strideLength;
  List<StrideLengthDataStruct> get strideLength => _strideLength ?? const [];
  bool hasStrideLength() => _strideLength != null;

  // "groundContactTime" field.
  List<GroundContactTimeDataStruct>? _groundContactTime;
  List<GroundContactTimeDataStruct> get groundContactTime =>
      _groundContactTime ?? const [];
  bool hasGroundContactTime() => _groundContactTime != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _user = snapshotData['user'] as DocumentReference?;
    _asymmetry = getStructList(
      snapshotData['asymmetry'],
      AsymmetryDataStruct.fromMap,
    );
    _verticalRatio = getStructList(
      snapshotData['verticalRatio'],
      VerticalRatioDataStruct.fromMap,
    );
    _strideLength = getStructList(
      snapshotData['strideLength'],
      StrideLengthDataStruct.fromMap,
    );
    _groundContactTime = getStructList(
      snapshotData['groundContactTime'],
      GroundContactTimeDataStruct.fromMap,
    );
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
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class RunningDataRecordDocumentEquality implements Equality<RunningDataRecord> {
  const RunningDataRecordDocumentEquality();

  @override
  bool equals(RunningDataRecord? e1, RunningDataRecord? e2) {
    const listEquality = ListEquality();
    return e1?.id == e2?.id &&
        e1?.user == e2?.user &&
        listEquality.equals(e1?.asymmetry, e2?.asymmetry) &&
        listEquality.equals(e1?.verticalRatio, e2?.verticalRatio) &&
        listEquality.equals(e1?.strideLength, e2?.strideLength) &&
        listEquality.equals(e1?.groundContactTime, e2?.groundContactTime);
  }

  @override
  int hash(RunningDataRecord? e) => const ListEquality().hash([
        e?.id,
        e?.user,
        e?.asymmetry,
        e?.verticalRatio,
        e?.strideLength,
        e?.groundContactTime
      ]);

  @override
  bool isValidKey(Object? o) => o is RunningDataRecord;
}
