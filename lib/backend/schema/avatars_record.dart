import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'avatars_record.g.dart';

abstract class AvatarsRecord
    implements Built<AvatarsRecord, AvatarsRecordBuilder> {
  static Serializer<AvatarsRecord> get serializer => _$avatarsRecordSerializer;

  String? get name;

  String? get description;

  String? get specifications;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: 'modified_at')
  DateTime? get modifiedAt;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AvatarsRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..specifications = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('avatars');

  static Stream<AvatarsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AvatarsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AvatarsRecord._();
  factory AvatarsRecord([void Function(AvatarsRecordBuilder) updates]) =
      _$AvatarsRecord;

  static AvatarsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAvatarsRecordData({
  String? name,
  String? description,
  String? specifications,
  DateTime? createdAt,
  DateTime? modifiedAt,
}) {
  final firestoreData = serializers.toFirestore(
    AvatarsRecord.serializer,
    AvatarsRecord(
      (a) => a
        ..name = name
        ..description = description
        ..specifications = specifications
        ..createdAt = createdAt
        ..modifiedAt = modifiedAt,
    ),
  );

  return firestoreData;
}
