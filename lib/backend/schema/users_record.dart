import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  String? get email;

  String? get password;

  String? get uid;

  int? get age;

  int? get saldo;

  LatLng? get location;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  String? get userTitle;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..displayName = ''
    ..email = ''
    ..password = ''
    ..uid = ''
    ..saldo = 0
    ..age = 0
    ..phoneNumber = ''
    ..userTitle = ''
    ..photoUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersRecordData({
  String? displayName,
  String? email,
  int? saldo,
  String? password,
  String? uid,
  int? age,
  LatLng? location,
  String? phoneNumber,
  DateTime? createdTime,
  String? userTitle,
  String? photoUrl,
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
        ..displayName = displayName
        ..saldo = saldo
        ..email = email
        ..password = password
        ..uid = uid
        ..age = age
        ..location = location
        ..phoneNumber = phoneNumber
        ..createdTime = createdTime
        ..userTitle = userTitle
        ..photoUrl = photoUrl,
    ),
  );

  return firestoreData;
}
