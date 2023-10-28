import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LessonsRecord extends FirestoreRecord {
  LessonsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "lesson_id" field.
  int? _lessonId;
  int get lessonId => _lessonId ?? 0;
  bool hasLessonId() => _lessonId != null;

  // "lesson_name" field.
  String? _lessonName;
  String get lessonName => _lessonName ?? '';
  bool hasLessonName() => _lessonName != null;

  // "lesson_content" field.
  String? _lessonContent;
  String get lessonContent => _lessonContent ?? '';
  bool hasLessonContent() => _lessonContent != null;

  // "lesson_photos" field.
  List<String>? _lessonPhotos;
  List<String> get lessonPhotos => _lessonPhotos ?? const [];
  bool hasLessonPhotos() => _lessonPhotos != null;

  void _initializeFields() {
    _lessonId = castToType<int>(snapshotData['lesson_id']);
    _lessonName = snapshotData['lesson_name'] as String?;
    _lessonContent = snapshotData['lesson_content'] as String?;
    _lessonPhotos = getDataList(snapshotData['lesson_photos']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('lessons');

  static Stream<LessonsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LessonsRecord.fromSnapshot(s));

  static Future<LessonsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LessonsRecord.fromSnapshot(s));

  static LessonsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LessonsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LessonsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LessonsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LessonsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LessonsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLessonsRecordData({
  int? lessonId,
  String? lessonName,
  String? lessonContent,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'lesson_id': lessonId,
      'lesson_name': lessonName,
      'lesson_content': lessonContent,
    }.withoutNulls,
  );

  return firestoreData;
}

class LessonsRecordDocumentEquality implements Equality<LessonsRecord> {
  const LessonsRecordDocumentEquality();

  @override
  bool equals(LessonsRecord? e1, LessonsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.lessonId == e2?.lessonId &&
        e1?.lessonName == e2?.lessonName &&
        e1?.lessonContent == e2?.lessonContent &&
        listEquality.equals(e1?.lessonPhotos, e2?.lessonPhotos);
  }

  @override
  int hash(LessonsRecord? e) => const ListEquality()
      .hash([e?.lessonId, e?.lessonName, e?.lessonContent, e?.lessonPhotos]);

  @override
  bool isValidKey(Object? o) => o is LessonsRecord;
}
