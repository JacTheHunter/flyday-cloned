// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_author.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageAuthor _$MessageAuthorFromJson(Map<String, dynamic> json) {
  return _MessageAuthor.fromJson(json);
}

/// @nodoc
mixin _$MessageAuthor {
  @JsonKey(name: '_id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name', defaultValue: '')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name', defaultValue: '')
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_customer', defaultValue: false)
  bool get isCustomer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageAuthorCopyWith<MessageAuthor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageAuthorCopyWith<$Res> {
  factory $MessageAuthorCopyWith(
          MessageAuthor value, $Res Function(MessageAuthor) then) =
      _$MessageAuthorCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id', defaultValue: 0) int id,
      @JsonKey(name: 'first_name', defaultValue: '') String firstName,
      @JsonKey(name: 'last_name', defaultValue: '') String lastName,
      @JsonKey(name: 'is_customer', defaultValue: false) bool isCustomer});
}

/// @nodoc
class _$MessageAuthorCopyWithImpl<$Res>
    implements $MessageAuthorCopyWith<$Res> {
  _$MessageAuthorCopyWithImpl(this._value, this._then);

  final MessageAuthor _value;
  // ignore: unused_field
  final $Res Function(MessageAuthor) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? isCustomer = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      isCustomer: isCustomer == freezed
          ? _value.isCustomer
          : isCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_MessageAuthorCopyWith<$Res>
    implements $MessageAuthorCopyWith<$Res> {
  factory _$$_MessageAuthorCopyWith(
          _$_MessageAuthor value, $Res Function(_$_MessageAuthor) then) =
      __$$_MessageAuthorCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id', defaultValue: 0) int id,
      @JsonKey(name: 'first_name', defaultValue: '') String firstName,
      @JsonKey(name: 'last_name', defaultValue: '') String lastName,
      @JsonKey(name: 'is_customer', defaultValue: false) bool isCustomer});
}

/// @nodoc
class __$$_MessageAuthorCopyWithImpl<$Res>
    extends _$MessageAuthorCopyWithImpl<$Res>
    implements _$$_MessageAuthorCopyWith<$Res> {
  __$$_MessageAuthorCopyWithImpl(
      _$_MessageAuthor _value, $Res Function(_$_MessageAuthor) _then)
      : super(_value, (v) => _then(v as _$_MessageAuthor));

  @override
  _$_MessageAuthor get _value => super._value as _$_MessageAuthor;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? isCustomer = freezed,
  }) {
    return _then(_$_MessageAuthor(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      isCustomer: isCustomer == freezed
          ? _value.isCustomer
          : isCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageAuthor extends _MessageAuthor {
  const _$_MessageAuthor(
      {@JsonKey(name: '_id', defaultValue: 0)
          required this.id,
      @JsonKey(name: 'first_name', defaultValue: '')
          required this.firstName,
      @JsonKey(name: 'last_name', defaultValue: '')
          required this.lastName,
      @JsonKey(name: 'is_customer', defaultValue: false)
          required this.isCustomer})
      : super._();

  factory _$_MessageAuthor.fromJson(Map<String, dynamic> json) =>
      _$$_MessageAuthorFromJson(json);

  @override
  @JsonKey(name: '_id', defaultValue: 0)
  final int id;
  @override
  @JsonKey(name: 'first_name', defaultValue: '')
  final String firstName;
  @override
  @JsonKey(name: 'last_name', defaultValue: '')
  final String lastName;
  @override
  @JsonKey(name: 'is_customer', defaultValue: false)
  final bool isCustomer;

  @override
  String toString() {
    return 'MessageAuthor(id: $id, firstName: $firstName, lastName: $lastName, isCustomer: $isCustomer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageAuthor &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality()
                .equals(other.isCustomer, isCustomer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(isCustomer));

  @JsonKey(ignore: true)
  @override
  _$$_MessageAuthorCopyWith<_$_MessageAuthor> get copyWith =>
      __$$_MessageAuthorCopyWithImpl<_$_MessageAuthor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageAuthorToJson(
      this,
    );
  }
}

abstract class _MessageAuthor extends MessageAuthor {
  const factory _MessageAuthor(
      {@JsonKey(name: '_id', defaultValue: 0)
          required final int id,
      @JsonKey(name: 'first_name', defaultValue: '')
          required final String firstName,
      @JsonKey(name: 'last_name', defaultValue: '')
          required final String lastName,
      @JsonKey(name: 'is_customer', defaultValue: false)
          required final bool isCustomer}) = _$_MessageAuthor;
  const _MessageAuthor._() : super._();

  factory _MessageAuthor.fromJson(Map<String, dynamic> json) =
      _$_MessageAuthor.fromJson;

  @override
  @JsonKey(name: '_id', defaultValue: 0)
  int get id;
  @override
  @JsonKey(name: 'first_name', defaultValue: '')
  String get firstName;
  @override
  @JsonKey(name: 'last_name', defaultValue: '')
  String get lastName;
  @override
  @JsonKey(name: 'is_customer', defaultValue: false)
  bool get isCustomer;
  @override
  @JsonKey(ignore: true)
  _$$_MessageAuthorCopyWith<_$_MessageAuthor> get copyWith =>
      throw _privateConstructorUsedError;
}
