import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Q1Record extends FirestoreRecord {
  Q1Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "letraA" field.
  bool? _letraA;
  bool get letraA => _letraA ?? false;
  bool hasLetraA() => _letraA != null;

  // "letraB" field.
  bool? _letraB;
  bool get letraB => _letraB ?? false;
  bool hasLetraB() => _letraB != null;

  // "letraC" field.
  bool? _letraC;
  bool get letraC => _letraC ?? false;
  bool hasLetraC() => _letraC != null;

  // "letraD" field.
  bool? _letraD;
  bool get letraD => _letraD ?? false;
  bool hasLetraD() => _letraD != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _letraA = snapshotData['letraA'] as bool?;
    _letraB = snapshotData['letraB'] as bool?;
    _letraC = snapshotData['letraC'] as bool?;
    _letraD = snapshotData['letraD'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Q1')
          : FirebaseFirestore.instance.collectionGroup('Q1');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('Q1').doc();

  static Stream<Q1Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Q1Record.fromSnapshot(s));

  static Future<Q1Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Q1Record.fromSnapshot(s));

  static Q1Record fromSnapshot(DocumentSnapshot snapshot) => Q1Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Q1Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Q1Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Q1Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Q1Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQ1RecordData({
  String? id,
  bool? letraA,
  bool? letraB,
  bool? letraC,
  bool? letraD,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'letraA': letraA,
      'letraB': letraB,
      'letraC': letraC,
      'letraD': letraD,
    }.withoutNulls,
  );

  return firestoreData;
}

class Q1RecordDocumentEquality implements Equality<Q1Record> {
  const Q1RecordDocumentEquality();

  @override
  bool equals(Q1Record? e1, Q1Record? e2) {
    return e1?.id == e2?.id &&
        e1?.letraA == e2?.letraA &&
        e1?.letraB == e2?.letraB &&
        e1?.letraC == e2?.letraC &&
        e1?.letraD == e2?.letraD;
  }

  @override
  int hash(Q1Record? e) => const ListEquality()
      .hash([e?.id, e?.letraA, e?.letraB, e?.letraC, e?.letraD]);

  @override
  bool isValidKey(Object? o) => o is Q1Record;
}
