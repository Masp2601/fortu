// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatars_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AvatarsRecord> _$avatarsRecordSerializer =
    new _$AvatarsRecordSerializer();

class _$AvatarsRecordSerializer implements StructuredSerializer<AvatarsRecord> {
  @override
  final Iterable<Type> types = const [AvatarsRecord, _$AvatarsRecord];
  @override
  final String wireName = 'AvatarsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AvatarsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.specifications;
    if (value != null) {
      result
        ..add('specifications')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.modifiedAt;
    if (value != null) {
      result
        ..add('modified_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  AvatarsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AvatarsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'specifications':
          result.specifications = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'modified_at':
          result.modifiedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$AvatarsRecord extends AvatarsRecord {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? specifications;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? modifiedAt;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AvatarsRecord([void Function(AvatarsRecordBuilder)? updates]) =>
      (new AvatarsRecordBuilder()..update(updates))._build();

  _$AvatarsRecord._(
      {this.name,
      this.description,
      this.specifications,
      this.createdAt,
      this.modifiedAt,
      this.ffRef})
      : super._();

  @override
  AvatarsRecord rebuild(void Function(AvatarsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AvatarsRecordBuilder toBuilder() => new AvatarsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AvatarsRecord &&
        name == other.name &&
        description == other.description &&
        specifications == other.specifications &&
        createdAt == other.createdAt &&
        modifiedAt == other.modifiedAt &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, specifications.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, modifiedAt.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AvatarsRecord')
          ..add('name', name)
          ..add('description', description)
          ..add('specifications', specifications)
          ..add('createdAt', createdAt)
          ..add('modifiedAt', modifiedAt)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AvatarsRecordBuilder
    implements Builder<AvatarsRecord, AvatarsRecordBuilder> {
  _$AvatarsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _specifications;
  String? get specifications => _$this._specifications;
  set specifications(String? specifications) =>
      _$this._specifications = specifications;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _$this._modifiedAt;
  set modifiedAt(DateTime? modifiedAt) => _$this._modifiedAt = modifiedAt;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AvatarsRecordBuilder() {
    AvatarsRecord._initializeBuilder(this);
  }

  AvatarsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _specifications = $v.specifications;
      _createdAt = $v.createdAt;
      _modifiedAt = $v.modifiedAt;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AvatarsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AvatarsRecord;
  }

  @override
  void update(void Function(AvatarsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AvatarsRecord build() => _build();

  _$AvatarsRecord _build() {
    final _$result = _$v ??
        new _$AvatarsRecord._(
            name: name,
            description: description,
            specifications: specifications,
            createdAt: createdAt,
            modifiedAt: modifiedAt,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
