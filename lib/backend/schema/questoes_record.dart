import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuestoesRecord extends FirestoreRecord {
  QuestoesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id_user" field.
  String? _idUser;
  String get idUser => _idUser ?? '';
  bool hasIdUser() => _idUser != null;

  // "istrue" field.
  bool? _istrue;
  bool get istrue => _istrue ?? false;
  bool hasIstrue() => _istrue != null;

  void _initializeFields() {
    _idUser = snapshotData['id_user'] as String?;
    _istrue = snapshotData['istrue'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('questoes');

  static Stream<QuestoesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuestoesRecord.fromSnapshot(s));

  static Future<QuestoesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuestoesRecord.fromSnapshot(s));

  static QuestoesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QuestoesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuestoesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuestoesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuestoesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuestoesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuestoesRecordData({
  String? idUser,
  bool? istrue,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id_user': idUser,
      'istrue': istrue,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuestoesRecordDocumentEquality implements Equality<QuestoesRecord> {
  const QuestoesRecordDocumentEquality();

  @override
  bool equals(QuestoesRecord? e1, QuestoesRecord? e2) {
    return e1?.idUser == e2?.idUser && e1?.istrue == e2?.istrue;
  }

  @override
  int hash(QuestoesRecord? e) =>
      const ListEquality().hash([e?.idUser, e?.istrue]);

  @override
  bool isValidKey(Object? o) => o is QuestoesRecord;
}
