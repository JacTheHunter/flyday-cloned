// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'error_status_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ErrorStatusMessage _$ErrorStatusMessageFromJson(Map<String, dynamic> json) {
  return _ErrorStatusMessage.fromJson(json);
}

/// @nodoc
mixin _$ErrorStatusMessage {
  String? get text => throw _privateConstructorUsedError;
  dynamic get showPopUp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorStatusMessageCopyWith<ErrorStatusMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorStatusMessageCopyWith<$Res> {
  factory $ErrorStatusMessageCopyWith(
          ErrorStatusMessage value, $Res Function(ErrorStatusMessage) then) =
      _$ErrorStatusMessageCopyWithImpl<$Res>;
  $Res call({String? text, dynamic showPopUp});
}

/// @nodoc
class _$ErrorStatusMessageCopyWithImpl<$Res>
    implements $ErrorStatusMessageCopyWith<$Res> {
  _$ErrorStatusMessageCopyWithImpl(this._value, this._then);

  final ErrorStatusMessage _value;
  // ignore: unused_field
  final $Res Function(ErrorStatusMessage) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? showPopUp = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      showPopUp: showPopUp == freezed
          ? _value.showPopUp
          : showPopUp // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$$_ErrorStatusMessageCopyWith<$Res>
    implements $ErrorStatusMessageCopyWith<$Res> {
  factory _$$_ErrorStatusMessageCopyWith(_$_ErrorStatusMessage value,
          $Res Function(_$_ErrorStatusMessage) then) =
      __$$_ErrorStatusMessageCopyWithImpl<$Res>;
  @override
  $Res call({String? text, dynamic showPopUp});
}

/// @nodoc
class __$$_ErrorStatusMessageCopyWithImpl<$Res>
    extends _$ErrorStatusMessageCopyWithImpl<$Res>
    implements _$$_ErrorStatusMessageCopyWith<$Res> {
  __$$_ErrorStatusMessageCopyWithImpl(
      _$_ErrorStatusMessage _value, $Res Function(_$_ErrorStatusMessage) _then)
      : super(_value, (v) => _then(v as _$_ErrorStatusMessage));

  @override
  _$_ErrorStatusMessage get _value => super._value as _$_ErrorStatusMessage;

  @override
  $Res call({
    Object? text = freezed,
    Object? showPopUp = freezed,
  }) {
    return _then(_$_ErrorStatusMessage(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      showPopUp: showPopUp == freezed ? _value.showPopUp : showPopUp,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorStatusMessage implements _ErrorStatusMessage {
  _$_ErrorStatusMessage({this.text, this.showPopUp = false});

  factory _$_ErrorStatusMessage.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorStatusMessageFromJson(json);

  @override
  final String? text;
  @override
  @JsonKey()
  final dynamic showPopUp;

  @override
  String toString() {
    return 'ErrorStatusMessage(text: $text, showPopUp: $showPopUp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorStatusMessage &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.showPopUp, showPopUp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(showPopUp));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorStatusMessageCopyWith<_$_ErrorStatusMessage> get copyWith =>
      __$$_ErrorStatusMessageCopyWithImpl<_$_ErrorStatusMessage>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorStatusMessageToJson(
      this,
    );
  }
}

abstract class _ErrorStatusMessage implements ErrorStatusMessage {
  factory _ErrorStatusMessage({final String? text, final dynamic showPopUp}) =
      _$_ErrorStatusMessage;

  factory _ErrorStatusMessage.fromJson(Map<String, dynamic> json) =
      _$_ErrorStatusMessage.fromJson;

  @override
  String? get text;
  @override
  dynamic get showPopUp;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorStatusMessageCopyWith<_$_ErrorStatusMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
