// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ads_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? more) fetchAds,
    required TResult Function(AdStatus adStatus) updateAdStatus,
    required TResult Function(int id) selectAd,
    required TResult Function(int chatId) chatOfAdOpened,
    required TResult Function(int chatId) newMessageInChatOfAd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? more)? fetchAds,
    TResult Function(AdStatus adStatus)? updateAdStatus,
    TResult Function(int id)? selectAd,
    TResult Function(int chatId)? chatOfAdOpened,
    TResult Function(int chatId)? newMessageInChatOfAd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? more)? fetchAds,
    TResult Function(AdStatus adStatus)? updateAdStatus,
    TResult Function(int id)? selectAd,
    TResult Function(int chatId)? chatOfAdOpened,
    TResult Function(int chatId)? newMessageInChatOfAd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAds value) fetchAds,
    required TResult Function(_UpdateAdStatus value) updateAdStatus,
    required TResult Function(_SelectAd value) selectAd,
    required TResult Function(_ChatOfAdOpened value) chatOfAdOpened,
    required TResult Function(_NewMessageInChatOfAd value) newMessageInChatOfAd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchAds value)? fetchAds,
    TResult Function(_UpdateAdStatus value)? updateAdStatus,
    TResult Function(_SelectAd value)? selectAd,
    TResult Function(_ChatOfAdOpened value)? chatOfAdOpened,
    TResult Function(_NewMessageInChatOfAd value)? newMessageInChatOfAd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAds value)? fetchAds,
    TResult Function(_UpdateAdStatus value)? updateAdStatus,
    TResult Function(_SelectAd value)? selectAd,
    TResult Function(_ChatOfAdOpened value)? chatOfAdOpened,
    TResult Function(_NewMessageInChatOfAd value)? newMessageInChatOfAd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdsEventCopyWith<$Res> {
  factory $AdsEventCopyWith(AdsEvent value, $Res Function(AdsEvent) then) =
      _$AdsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdsEventCopyWithImpl<$Res> implements $AdsEventCopyWith<$Res> {
  _$AdsEventCopyWithImpl(this._value, this._then);

  final AdsEvent _value;
  // ignore: unused_field
  final $Res Function(AdsEvent) _then;
}

/// @nodoc
abstract class _$$_FetchAdsCopyWith<$Res> {
  factory _$$_FetchAdsCopyWith(
          _$_FetchAds value, $Res Function(_$_FetchAds) then) =
      __$$_FetchAdsCopyWithImpl<$Res>;
  $Res call({bool? more});
}

/// @nodoc
class __$$_FetchAdsCopyWithImpl<$Res> extends _$AdsEventCopyWithImpl<$Res>
    implements _$$_FetchAdsCopyWith<$Res> {
  __$$_FetchAdsCopyWithImpl(
      _$_FetchAds _value, $Res Function(_$_FetchAds) _then)
      : super(_value, (v) => _then(v as _$_FetchAds));

  @override
  _$_FetchAds get _value => super._value as _$_FetchAds;

  @override
  $Res call({
    Object? more = freezed,
  }) {
    return _then(_$_FetchAds(
      more == freezed
          ? _value.more
          : more // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_FetchAds implements _FetchAds {
  const _$_FetchAds([this.more]);

  @override
  final bool? more;

  @override
  String toString() {
    return 'AdsEvent.fetchAds(more: $more)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchAds &&
            const DeepCollectionEquality().equals(other.more, more));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(more));

  @JsonKey(ignore: true)
  @override
  _$$_FetchAdsCopyWith<_$_FetchAds> get copyWith =>
      __$$_FetchAdsCopyWithImpl<_$_FetchAds>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? more) fetchAds,
    required TResult Function(AdStatus adStatus) updateAdStatus,
    required TResult Function(int id) selectAd,
    required TResult Function(int chatId) chatOfAdOpened,
    required TResult Function(int chatId) newMessageInChatOfAd,
  }) {
    return fetchAds(more);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? more)? fetchAds,
    TResult Function(AdStatus adStatus)? updateAdStatus,
    TResult Function(int id)? selectAd,
    TResult Function(int chatId)? chatOfAdOpened,
    TResult Function(int chatId)? newMessageInChatOfAd,
  }) {
    return fetchAds?.call(more);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? more)? fetchAds,
    TResult Function(AdStatus adStatus)? updateAdStatus,
    TResult Function(int id)? selectAd,
    TResult Function(int chatId)? chatOfAdOpened,
    TResult Function(int chatId)? newMessageInChatOfAd,
    required TResult orElse(),
  }) {
    if (fetchAds != null) {
      return fetchAds(more);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAds value) fetchAds,
    required TResult Function(_UpdateAdStatus value) updateAdStatus,
    required TResult Function(_SelectAd value) selectAd,
    required TResult Function(_ChatOfAdOpened value) chatOfAdOpened,
    required TResult Function(_NewMessageInChatOfAd value) newMessageInChatOfAd,
  }) {
    return fetchAds(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchAds value)? fetchAds,
    TResult Function(_UpdateAdStatus value)? updateAdStatus,
    TResult Function(_SelectAd value)? selectAd,
    TResult Function(_ChatOfAdOpened value)? chatOfAdOpened,
    TResult Function(_NewMessageInChatOfAd value)? newMessageInChatOfAd,
  }) {
    return fetchAds?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAds value)? fetchAds,
    TResult Function(_UpdateAdStatus value)? updateAdStatus,
    TResult Function(_SelectAd value)? selectAd,
    TResult Function(_ChatOfAdOpened value)? chatOfAdOpened,
    TResult Function(_NewMessageInChatOfAd value)? newMessageInChatOfAd,
    required TResult orElse(),
  }) {
    if (fetchAds != null) {
      return fetchAds(this);
    }
    return orElse();
  }
}

abstract class _FetchAds implements AdsEvent {
  const factory _FetchAds([final bool? more]) = _$_FetchAds;

  bool? get more;
  @JsonKey(ignore: true)
  _$$_FetchAdsCopyWith<_$_FetchAds> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateAdStatusCopyWith<$Res> {
  factory _$$_UpdateAdStatusCopyWith(
          _$_UpdateAdStatus value, $Res Function(_$_UpdateAdStatus) then) =
      __$$_UpdateAdStatusCopyWithImpl<$Res>;
  $Res call({AdStatus adStatus});
}

/// @nodoc
class __$$_UpdateAdStatusCopyWithImpl<$Res> extends _$AdsEventCopyWithImpl<$Res>
    implements _$$_UpdateAdStatusCopyWith<$Res> {
  __$$_UpdateAdStatusCopyWithImpl(
      _$_UpdateAdStatus _value, $Res Function(_$_UpdateAdStatus) _then)
      : super(_value, (v) => _then(v as _$_UpdateAdStatus));

  @override
  _$_UpdateAdStatus get _value => super._value as _$_UpdateAdStatus;

  @override
  $Res call({
    Object? adStatus = freezed,
  }) {
    return _then(_$_UpdateAdStatus(
      adStatus == freezed
          ? _value.adStatus
          : adStatus // ignore: cast_nullable_to_non_nullable
              as AdStatus,
    ));
  }
}

/// @nodoc

class _$_UpdateAdStatus implements _UpdateAdStatus {
  const _$_UpdateAdStatus(this.adStatus);

  @override
  final AdStatus adStatus;

  @override
  String toString() {
    return 'AdsEvent.updateAdStatus(adStatus: $adStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateAdStatus &&
            const DeepCollectionEquality().equals(other.adStatus, adStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(adStatus));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateAdStatusCopyWith<_$_UpdateAdStatus> get copyWith =>
      __$$_UpdateAdStatusCopyWithImpl<_$_UpdateAdStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? more) fetchAds,
    required TResult Function(AdStatus adStatus) updateAdStatus,
    required TResult Function(int id) selectAd,
    required TResult Function(int chatId) chatOfAdOpened,
    required TResult Function(int chatId) newMessageInChatOfAd,
  }) {
    return updateAdStatus(adStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? more)? fetchAds,
    TResult Function(AdStatus adStatus)? updateAdStatus,
    TResult Function(int id)? selectAd,
    TResult Function(int chatId)? chatOfAdOpened,
    TResult Function(int chatId)? newMessageInChatOfAd,
  }) {
    return updateAdStatus?.call(adStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? more)? fetchAds,
    TResult Function(AdStatus adStatus)? updateAdStatus,
    TResult Function(int id)? selectAd,
    TResult Function(int chatId)? chatOfAdOpened,
    TResult Function(int chatId)? newMessageInChatOfAd,
    required TResult orElse(),
  }) {
    if (updateAdStatus != null) {
      return updateAdStatus(adStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAds value) fetchAds,
    required TResult Function(_UpdateAdStatus value) updateAdStatus,
    required TResult Function(_SelectAd value) selectAd,
    required TResult Function(_ChatOfAdOpened value) chatOfAdOpened,
    required TResult Function(_NewMessageInChatOfAd value) newMessageInChatOfAd,
  }) {
    return updateAdStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchAds value)? fetchAds,
    TResult Function(_UpdateAdStatus value)? updateAdStatus,
    TResult Function(_SelectAd value)? selectAd,
    TResult Function(_ChatOfAdOpened value)? chatOfAdOpened,
    TResult Function(_NewMessageInChatOfAd value)? newMessageInChatOfAd,
  }) {
    return updateAdStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAds value)? fetchAds,
    TResult Function(_UpdateAdStatus value)? updateAdStatus,
    TResult Function(_SelectAd value)? selectAd,
    TResult Function(_ChatOfAdOpened value)? chatOfAdOpened,
    TResult Function(_NewMessageInChatOfAd value)? newMessageInChatOfAd,
    required TResult orElse(),
  }) {
    if (updateAdStatus != null) {
      return updateAdStatus(this);
    }
    return orElse();
  }
}

abstract class _UpdateAdStatus implements AdsEvent {
  const factory _UpdateAdStatus(final AdStatus adStatus) = _$_UpdateAdStatus;

  AdStatus get adStatus;
  @JsonKey(ignore: true)
  _$$_UpdateAdStatusCopyWith<_$_UpdateAdStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectAdCopyWith<$Res> {
  factory _$$_SelectAdCopyWith(
          _$_SelectAd value, $Res Function(_$_SelectAd) then) =
      __$$_SelectAdCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$$_SelectAdCopyWithImpl<$Res> extends _$AdsEventCopyWithImpl<$Res>
    implements _$$_SelectAdCopyWith<$Res> {
  __$$_SelectAdCopyWithImpl(
      _$_SelectAd _value, $Res Function(_$_SelectAd) _then)
      : super(_value, (v) => _then(v as _$_SelectAd));

  @override
  _$_SelectAd get _value => super._value as _$_SelectAd;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_SelectAd(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SelectAd implements _SelectAd {
  const _$_SelectAd(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'AdsEvent.selectAd(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectAd &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_SelectAdCopyWith<_$_SelectAd> get copyWith =>
      __$$_SelectAdCopyWithImpl<_$_SelectAd>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? more) fetchAds,
    required TResult Function(AdStatus adStatus) updateAdStatus,
    required TResult Function(int id) selectAd,
    required TResult Function(int chatId) chatOfAdOpened,
    required TResult Function(int chatId) newMessageInChatOfAd,
  }) {
    return selectAd(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? more)? fetchAds,
    TResult Function(AdStatus adStatus)? updateAdStatus,
    TResult Function(int id)? selectAd,
    TResult Function(int chatId)? chatOfAdOpened,
    TResult Function(int chatId)? newMessageInChatOfAd,
  }) {
    return selectAd?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? more)? fetchAds,
    TResult Function(AdStatus adStatus)? updateAdStatus,
    TResult Function(int id)? selectAd,
    TResult Function(int chatId)? chatOfAdOpened,
    TResult Function(int chatId)? newMessageInChatOfAd,
    required TResult orElse(),
  }) {
    if (selectAd != null) {
      return selectAd(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAds value) fetchAds,
    required TResult Function(_UpdateAdStatus value) updateAdStatus,
    required TResult Function(_SelectAd value) selectAd,
    required TResult Function(_ChatOfAdOpened value) chatOfAdOpened,
    required TResult Function(_NewMessageInChatOfAd value) newMessageInChatOfAd,
  }) {
    return selectAd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchAds value)? fetchAds,
    TResult Function(_UpdateAdStatus value)? updateAdStatus,
    TResult Function(_SelectAd value)? selectAd,
    TResult Function(_ChatOfAdOpened value)? chatOfAdOpened,
    TResult Function(_NewMessageInChatOfAd value)? newMessageInChatOfAd,
  }) {
    return selectAd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAds value)? fetchAds,
    TResult Function(_UpdateAdStatus value)? updateAdStatus,
    TResult Function(_SelectAd value)? selectAd,
    TResult Function(_ChatOfAdOpened value)? chatOfAdOpened,
    TResult Function(_NewMessageInChatOfAd value)? newMessageInChatOfAd,
    required TResult orElse(),
  }) {
    if (selectAd != null) {
      return selectAd(this);
    }
    return orElse();
  }
}

abstract class _SelectAd implements AdsEvent {
  const factory _SelectAd(final int id) = _$_SelectAd;

  int get id;
  @JsonKey(ignore: true)
  _$$_SelectAdCopyWith<_$_SelectAd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChatOfAdOpenedCopyWith<$Res> {
  factory _$$_ChatOfAdOpenedCopyWith(
          _$_ChatOfAdOpened value, $Res Function(_$_ChatOfAdOpened) then) =
      __$$_ChatOfAdOpenedCopyWithImpl<$Res>;
  $Res call({int chatId});
}

/// @nodoc
class __$$_ChatOfAdOpenedCopyWithImpl<$Res> extends _$AdsEventCopyWithImpl<$Res>
    implements _$$_ChatOfAdOpenedCopyWith<$Res> {
  __$$_ChatOfAdOpenedCopyWithImpl(
      _$_ChatOfAdOpened _value, $Res Function(_$_ChatOfAdOpened) _then)
      : super(_value, (v) => _then(v as _$_ChatOfAdOpened));

  @override
  _$_ChatOfAdOpened get _value => super._value as _$_ChatOfAdOpened;

  @override
  $Res call({
    Object? chatId = freezed,
  }) {
    return _then(_$_ChatOfAdOpened(
      chatId == freezed
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChatOfAdOpened implements _ChatOfAdOpened {
  const _$_ChatOfAdOpened(this.chatId);

  @override
  final int chatId;

  @override
  String toString() {
    return 'AdsEvent.chatOfAdOpened(chatId: $chatId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatOfAdOpened &&
            const DeepCollectionEquality().equals(other.chatId, chatId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(chatId));

  @JsonKey(ignore: true)
  @override
  _$$_ChatOfAdOpenedCopyWith<_$_ChatOfAdOpened> get copyWith =>
      __$$_ChatOfAdOpenedCopyWithImpl<_$_ChatOfAdOpened>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? more) fetchAds,
    required TResult Function(AdStatus adStatus) updateAdStatus,
    required TResult Function(int id) selectAd,
    required TResult Function(int chatId) chatOfAdOpened,
    required TResult Function(int chatId) newMessageInChatOfAd,
  }) {
    return chatOfAdOpened(chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? more)? fetchAds,
    TResult Function(AdStatus adStatus)? updateAdStatus,
    TResult Function(int id)? selectAd,
    TResult Function(int chatId)? chatOfAdOpened,
    TResult Function(int chatId)? newMessageInChatOfAd,
  }) {
    return chatOfAdOpened?.call(chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? more)? fetchAds,
    TResult Function(AdStatus adStatus)? updateAdStatus,
    TResult Function(int id)? selectAd,
    TResult Function(int chatId)? chatOfAdOpened,
    TResult Function(int chatId)? newMessageInChatOfAd,
    required TResult orElse(),
  }) {
    if (chatOfAdOpened != null) {
      return chatOfAdOpened(chatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAds value) fetchAds,
    required TResult Function(_UpdateAdStatus value) updateAdStatus,
    required TResult Function(_SelectAd value) selectAd,
    required TResult Function(_ChatOfAdOpened value) chatOfAdOpened,
    required TResult Function(_NewMessageInChatOfAd value) newMessageInChatOfAd,
  }) {
    return chatOfAdOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchAds value)? fetchAds,
    TResult Function(_UpdateAdStatus value)? updateAdStatus,
    TResult Function(_SelectAd value)? selectAd,
    TResult Function(_ChatOfAdOpened value)? chatOfAdOpened,
    TResult Function(_NewMessageInChatOfAd value)? newMessageInChatOfAd,
  }) {
    return chatOfAdOpened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAds value)? fetchAds,
    TResult Function(_UpdateAdStatus value)? updateAdStatus,
    TResult Function(_SelectAd value)? selectAd,
    TResult Function(_ChatOfAdOpened value)? chatOfAdOpened,
    TResult Function(_NewMessageInChatOfAd value)? newMessageInChatOfAd,
    required TResult orElse(),
  }) {
    if (chatOfAdOpened != null) {
      return chatOfAdOpened(this);
    }
    return orElse();
  }
}

abstract class _ChatOfAdOpened implements AdsEvent {
  const factory _ChatOfAdOpened(final int chatId) = _$_ChatOfAdOpened;

  int get chatId;
  @JsonKey(ignore: true)
  _$$_ChatOfAdOpenedCopyWith<_$_ChatOfAdOpened> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NewMessageInChatOfAdCopyWith<$Res> {
  factory _$$_NewMessageInChatOfAdCopyWith(_$_NewMessageInChatOfAd value,
          $Res Function(_$_NewMessageInChatOfAd) then) =
      __$$_NewMessageInChatOfAdCopyWithImpl<$Res>;
  $Res call({int chatId});
}

/// @nodoc
class __$$_NewMessageInChatOfAdCopyWithImpl<$Res>
    extends _$AdsEventCopyWithImpl<$Res>
    implements _$$_NewMessageInChatOfAdCopyWith<$Res> {
  __$$_NewMessageInChatOfAdCopyWithImpl(_$_NewMessageInChatOfAd _value,
      $Res Function(_$_NewMessageInChatOfAd) _then)
      : super(_value, (v) => _then(v as _$_NewMessageInChatOfAd));

  @override
  _$_NewMessageInChatOfAd get _value => super._value as _$_NewMessageInChatOfAd;

  @override
  $Res call({
    Object? chatId = freezed,
  }) {
    return _then(_$_NewMessageInChatOfAd(
      chatId == freezed
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_NewMessageInChatOfAd implements _NewMessageInChatOfAd {
  const _$_NewMessageInChatOfAd(this.chatId);

  @override
  final int chatId;

  @override
  String toString() {
    return 'AdsEvent.newMessageInChatOfAd(chatId: $chatId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewMessageInChatOfAd &&
            const DeepCollectionEquality().equals(other.chatId, chatId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(chatId));

  @JsonKey(ignore: true)
  @override
  _$$_NewMessageInChatOfAdCopyWith<_$_NewMessageInChatOfAd> get copyWith =>
      __$$_NewMessageInChatOfAdCopyWithImpl<_$_NewMessageInChatOfAd>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? more) fetchAds,
    required TResult Function(AdStatus adStatus) updateAdStatus,
    required TResult Function(int id) selectAd,
    required TResult Function(int chatId) chatOfAdOpened,
    required TResult Function(int chatId) newMessageInChatOfAd,
  }) {
    return newMessageInChatOfAd(chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? more)? fetchAds,
    TResult Function(AdStatus adStatus)? updateAdStatus,
    TResult Function(int id)? selectAd,
    TResult Function(int chatId)? chatOfAdOpened,
    TResult Function(int chatId)? newMessageInChatOfAd,
  }) {
    return newMessageInChatOfAd?.call(chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? more)? fetchAds,
    TResult Function(AdStatus adStatus)? updateAdStatus,
    TResult Function(int id)? selectAd,
    TResult Function(int chatId)? chatOfAdOpened,
    TResult Function(int chatId)? newMessageInChatOfAd,
    required TResult orElse(),
  }) {
    if (newMessageInChatOfAd != null) {
      return newMessageInChatOfAd(chatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAds value) fetchAds,
    required TResult Function(_UpdateAdStatus value) updateAdStatus,
    required TResult Function(_SelectAd value) selectAd,
    required TResult Function(_ChatOfAdOpened value) chatOfAdOpened,
    required TResult Function(_NewMessageInChatOfAd value) newMessageInChatOfAd,
  }) {
    return newMessageInChatOfAd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchAds value)? fetchAds,
    TResult Function(_UpdateAdStatus value)? updateAdStatus,
    TResult Function(_SelectAd value)? selectAd,
    TResult Function(_ChatOfAdOpened value)? chatOfAdOpened,
    TResult Function(_NewMessageInChatOfAd value)? newMessageInChatOfAd,
  }) {
    return newMessageInChatOfAd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAds value)? fetchAds,
    TResult Function(_UpdateAdStatus value)? updateAdStatus,
    TResult Function(_SelectAd value)? selectAd,
    TResult Function(_ChatOfAdOpened value)? chatOfAdOpened,
    TResult Function(_NewMessageInChatOfAd value)? newMessageInChatOfAd,
    required TResult orElse(),
  }) {
    if (newMessageInChatOfAd != null) {
      return newMessageInChatOfAd(this);
    }
    return orElse();
  }
}

abstract class _NewMessageInChatOfAd implements AdsEvent {
  const factory _NewMessageInChatOfAd(final int chatId) =
      _$_NewMessageInChatOfAd;

  int get chatId;
  @JsonKey(ignore: true)
  _$$_NewMessageInChatOfAdCopyWith<_$_NewMessageInChatOfAd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdsState {
  StateStatus get status => throw _privateConstructorUsedError;
  List<Ad> get ads => throw _privateConstructorUsedError;
  AdStatus get adStatus => throw _privateConstructorUsedError;
  int get adsSelectedStatusCount => throw _privateConstructorUsedError;
  Ad? get selectedAd => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdsStateCopyWith<AdsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdsStateCopyWith<$Res> {
  factory $AdsStateCopyWith(AdsState value, $Res Function(AdsState) then) =
      _$AdsStateCopyWithImpl<$Res>;
  $Res call(
      {StateStatus status,
      List<Ad> ads,
      AdStatus adStatus,
      int adsSelectedStatusCount,
      Ad? selectedAd});

  $StateStatusCopyWith<$Res> get status;
  $AdCopyWith<$Res>? get selectedAd;
}

/// @nodoc
class _$AdsStateCopyWithImpl<$Res> implements $AdsStateCopyWith<$Res> {
  _$AdsStateCopyWithImpl(this._value, this._then);

  final AdsState _value;
  // ignore: unused_field
  final $Res Function(AdsState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? ads = freezed,
    Object? adStatus = freezed,
    Object? adsSelectedStatusCount = freezed,
    Object? selectedAd = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      ads: ads == freezed
          ? _value.ads
          : ads // ignore: cast_nullable_to_non_nullable
              as List<Ad>,
      adStatus: adStatus == freezed
          ? _value.adStatus
          : adStatus // ignore: cast_nullable_to_non_nullable
              as AdStatus,
      adsSelectedStatusCount: adsSelectedStatusCount == freezed
          ? _value.adsSelectedStatusCount
          : adsSelectedStatusCount // ignore: cast_nullable_to_non_nullable
              as int,
      selectedAd: selectedAd == freezed
          ? _value.selectedAd
          : selectedAd // ignore: cast_nullable_to_non_nullable
              as Ad?,
    ));
  }

  @override
  $StateStatusCopyWith<$Res> get status {
    return $StateStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }

  @override
  $AdCopyWith<$Res>? get selectedAd {
    if (_value.selectedAd == null) {
      return null;
    }

    return $AdCopyWith<$Res>(_value.selectedAd!, (value) {
      return _then(_value.copyWith(selectedAd: value));
    });
  }
}

/// @nodoc
abstract class _$$_AdsStateCopyWith<$Res> implements $AdsStateCopyWith<$Res> {
  factory _$$_AdsStateCopyWith(
          _$_AdsState value, $Res Function(_$_AdsState) then) =
      __$$_AdsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {StateStatus status,
      List<Ad> ads,
      AdStatus adStatus,
      int adsSelectedStatusCount,
      Ad? selectedAd});

  @override
  $StateStatusCopyWith<$Res> get status;
  @override
  $AdCopyWith<$Res>? get selectedAd;
}

/// @nodoc
class __$$_AdsStateCopyWithImpl<$Res> extends _$AdsStateCopyWithImpl<$Res>
    implements _$$_AdsStateCopyWith<$Res> {
  __$$_AdsStateCopyWithImpl(
      _$_AdsState _value, $Res Function(_$_AdsState) _then)
      : super(_value, (v) => _then(v as _$_AdsState));

  @override
  _$_AdsState get _value => super._value as _$_AdsState;

  @override
  $Res call({
    Object? status = freezed,
    Object? ads = freezed,
    Object? adStatus = freezed,
    Object? adsSelectedStatusCount = freezed,
    Object? selectedAd = freezed,
  }) {
    return _then(_$_AdsState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      ads: ads == freezed
          ? _value._ads
          : ads // ignore: cast_nullable_to_non_nullable
              as List<Ad>,
      adStatus: adStatus == freezed
          ? _value.adStatus
          : adStatus // ignore: cast_nullable_to_non_nullable
              as AdStatus,
      adsSelectedStatusCount: adsSelectedStatusCount == freezed
          ? _value.adsSelectedStatusCount
          : adsSelectedStatusCount // ignore: cast_nullable_to_non_nullable
              as int,
      selectedAd: selectedAd == freezed
          ? _value.selectedAd
          : selectedAd // ignore: cast_nullable_to_non_nullable
              as Ad?,
    ));
  }
}

/// @nodoc

class _$_AdsState implements _AdsState {
  const _$_AdsState(
      {this.status = const StateStatus(),
      final List<Ad> ads = const [],
      this.adStatus = AdStatus.all,
      this.adsSelectedStatusCount = 0,
      this.selectedAd})
      : _ads = ads;

  @override
  @JsonKey()
  final StateStatus status;
  final List<Ad> _ads;
  @override
  @JsonKey()
  List<Ad> get ads {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ads);
  }

  @override
  @JsonKey()
  final AdStatus adStatus;
  @override
  @JsonKey()
  final int adsSelectedStatusCount;
  @override
  final Ad? selectedAd;

  @override
  String toString() {
    return 'AdsState(status: $status, ads: $ads, adStatus: $adStatus, adsSelectedStatusCount: $adsSelectedStatusCount, selectedAd: $selectedAd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdsState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other._ads, _ads) &&
            const DeepCollectionEquality().equals(other.adStatus, adStatus) &&
            const DeepCollectionEquality()
                .equals(other.adsSelectedStatusCount, adsSelectedStatusCount) &&
            const DeepCollectionEquality()
                .equals(other.selectedAd, selectedAd));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(_ads),
      const DeepCollectionEquality().hash(adStatus),
      const DeepCollectionEquality().hash(adsSelectedStatusCount),
      const DeepCollectionEquality().hash(selectedAd));

  @JsonKey(ignore: true)
  @override
  _$$_AdsStateCopyWith<_$_AdsState> get copyWith =>
      __$$_AdsStateCopyWithImpl<_$_AdsState>(this, _$identity);
}

abstract class _AdsState implements AdsState {
  const factory _AdsState(
      {final StateStatus status,
      final List<Ad> ads,
      final AdStatus adStatus,
      final int adsSelectedStatusCount,
      final Ad? selectedAd}) = _$_AdsState;

  @override
  StateStatus get status;
  @override
  List<Ad> get ads;
  @override
  AdStatus get adStatus;
  @override
  int get adsSelectedStatusCount;
  @override
  Ad? get selectedAd;
  @override
  @JsonKey(ignore: true)
  _$$_AdsStateCopyWith<_$_AdsState> get copyWith =>
      throw _privateConstructorUsedError;
}
