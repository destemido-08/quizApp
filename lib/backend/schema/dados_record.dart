import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DadosRecord extends FirestoreRecord {
  DadosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "cargos" field.
  String? _cargos;
  String get cargos => _cargos ?? '';
  bool hasCargos() => _cargos != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "foto_user" field.
  String? _fotoUser;
  String get fotoUser => _fotoUser ?? '';
  bool hasFotoUser() => _fotoUser != null;

  // "nome_user" field.
  String? _nomeUser;
  String get nomeUser => _nomeUser ?? '';
  bool hasNomeUser() => _nomeUser != null;

  // "tempo" field.
  int? _tempo;
  int get tempo => _tempo ?? 0;
  bool hasTempo() => _tempo != null;

  // "questoes" field.
  int? _questoes;
  int get questoes => _questoes ?? 0;
  bool hasQuestoes() => _questoes != null;

  // "id_user" field.
  String? _idUser;
  String get idUser => _idUser ?? '';
  bool hasIdUser() => _idUser != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _cargos = snapshotData['cargos'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _fotoUser = snapshotData['foto_user'] as String?;
    _nomeUser = snapshotData['nome_user'] as String?;
    _tempo = castToType<int>(snapshotData['tempo']);
    _questoes = castToType<int>(snapshotData['questoes']);
    _idUser = snapshotData['id_user'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('dados')
          : FirebaseFirestore.instance.collectionGroup('dados');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('dados').doc();

  static Stream<DadosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DadosRecord.fromSnapshot(s));

  static Future<DadosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DadosRecord.fromSnapshot(s));

  static DadosRecord fromSnapshot(DocumentSnapshot snapshot) => DadosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DadosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DadosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DadosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DadosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDadosRecordData({
  String? cargos,
  String? descricao,
  String? fotoUser,
  String? nomeUser,
  int? tempo,
  int? questoes,
  String? idUser,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cargos': cargos,
      'descricao': descricao,
      'foto_user': fotoUser,
      'nome_user': nomeUser,
      'tempo': tempo,
      'questoes': questoes,
      'id_user': idUser,
    }.withoutNulls,
  );

  return firestoreData;
}

class DadosRecordDocumentEquality implements Equality<DadosRecord> {
  const DadosRecordDocumentEquality();

  @override
  bool equals(DadosRecord? e1, DadosRecord? e2) {
    return e1?.cargos == e2?.cargos &&
        e1?.descricao == e2?.descricao &&
        e1?.fotoUser == e2?.fotoUser &&
        e1?.nomeUser == e2?.nomeUser &&
        e1?.tempo == e2?.tempo &&
        e1?.questoes == e2?.questoes &&
        e1?.idUser == e2?.idUser;
  }

  @override
  int hash(DadosRecord? e) => const ListEquality().hash([
        e?.cargos,
        e?.descricao,
        e?.fotoUser,
        e?.nomeUser,
        e?.tempo,
        e?.questoes,
        e?.idUser
      ]);

  @override
  bool isValidKey(Object? o) => o is DadosRecord;
}
