import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotesRecord extends FirestoreRecord {
  NotesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "noteId" field.
  int? _noteId;
  int get noteId => _noteId ?? 0;
  bool hasNoteId() => _noteId != null;

  // "noteTitle" field.
  String? _noteTitle;
  String get noteTitle => _noteTitle ?? '';
  bool hasNoteTitle() => _noteTitle != null;

  // "noteParagraph" field.
  String? _noteParagraph;
  String get noteParagraph => _noteParagraph ?? '';
  bool hasNoteParagraph() => _noteParagraph != null;

  // "noteDate" field.
  DateTime? _noteDate;
  DateTime? get noteDate => _noteDate;
  bool hasNoteDate() => _noteDate != null;

  void _initializeFields() {
    _noteId = castToType<int>(snapshotData['noteId']);
    _noteTitle = snapshotData['noteTitle'] as String?;
    _noteParagraph = snapshotData['noteParagraph'] as String?;
    _noteDate = snapshotData['noteDate'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notes');

  static Stream<NotesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotesRecord.fromSnapshot(s));

  static Future<NotesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotesRecord.fromSnapshot(s));

  static NotesRecord fromSnapshot(DocumentSnapshot snapshot) => NotesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotesRecordData({
  int? noteId,
  String? noteTitle,
  String? noteParagraph,
  DateTime? noteDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'noteId': noteId,
      'noteTitle': noteTitle,
      'noteParagraph': noteParagraph,
      'noteDate': noteDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotesRecordDocumentEquality implements Equality<NotesRecord> {
  const NotesRecordDocumentEquality();

  @override
  bool equals(NotesRecord? e1, NotesRecord? e2) {
    return e1?.noteId == e2?.noteId &&
        e1?.noteTitle == e2?.noteTitle &&
        e1?.noteParagraph == e2?.noteParagraph &&
        e1?.noteDate == e2?.noteDate;
  }

  @override
  int hash(NotesRecord? e) => const ListEquality()
      .hash([e?.noteId, e?.noteTitle, e?.noteParagraph, e?.noteDate]);

  @override
  bool isValidKey(Object? o) => o is NotesRecord;
}
