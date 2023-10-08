import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuestionsRecord extends FirestoreRecord {
  QuestionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  bool hasQuestion() => _question != null;

  // "aselection" field.
  String? _aselection;
  String get aselection => _aselection ?? '';
  bool hasAselection() => _aselection != null;

  // "bselection" field.
  String? _bselection;
  String get bselection => _bselection ?? '';
  bool hasBselection() => _bselection != null;

  // "cselection" field.
  String? _cselection;
  String get cselection => _cselection ?? '';
  bool hasCselection() => _cselection != null;

  // "dselection" field.
  String? _dselection;
  String get dselection => _dselection ?? '';
  bool hasDselection() => _dselection != null;

  // "eselection" field.
  String? _eselection;
  String get eselection => _eselection ?? '';
  bool hasEselection() => _eselection != null;

  // "answer" field.
  String? _answer;
  String get answer => _answer ?? '';
  bool hasAnswer() => _answer != null;

  // "explanation" field.
  String? _explanation;
  String get explanation => _explanation ?? '';
  bool hasExplanation() => _explanation != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _question = snapshotData['question'] as String?;
    _aselection = snapshotData['aselection'] as String?;
    _bselection = snapshotData['bselection'] as String?;
    _cselection = snapshotData['cselection'] as String?;
    _dselection = snapshotData['dselection'] as String?;
    _eselection = snapshotData['eselection'] as String?;
    _answer = snapshotData['answer'] as String?;
    _explanation = snapshotData['explanation'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('questions');

  static Stream<QuestionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuestionsRecord.fromSnapshot(s));

  static Future<QuestionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuestionsRecord.fromSnapshot(s));

  static QuestionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QuestionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuestionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuestionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuestionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuestionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuestionsRecordData({
  String? id,
  String? question,
  String? aselection,
  String? bselection,
  String? cselection,
  String? dselection,
  String? eselection,
  String? answer,
  String? explanation,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'question': question,
      'aselection': aselection,
      'bselection': bselection,
      'cselection': cselection,
      'dselection': dselection,
      'eselection': eselection,
      'answer': answer,
      'explanation': explanation,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuestionsRecordDocumentEquality implements Equality<QuestionsRecord> {
  const QuestionsRecordDocumentEquality();

  @override
  bool equals(QuestionsRecord? e1, QuestionsRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.question == e2?.question &&
        e1?.aselection == e2?.aselection &&
        e1?.bselection == e2?.bselection &&
        e1?.cselection == e2?.cselection &&
        e1?.dselection == e2?.dselection &&
        e1?.eselection == e2?.eselection &&
        e1?.answer == e2?.answer &&
        e1?.explanation == e2?.explanation;
  }

  @override
  int hash(QuestionsRecord? e) => const ListEquality().hash([
        e?.id,
        e?.question,
        e?.aselection,
        e?.bselection,
        e?.cselection,
        e?.dselection,
        e?.eselection,
        e?.answer,
        e?.explanation
      ]);

  @override
  bool isValidKey(Object? o) => o is QuestionsRecord;
}
