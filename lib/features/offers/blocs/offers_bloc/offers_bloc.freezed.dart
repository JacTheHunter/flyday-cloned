// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'offers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OffersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? more) fetch,
    required TResult Function(int adId) setAdId,
    required TResult Function(int id) setSelectedOffer,
    required TResult Function(int id) withdrawOffer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    TResult Function(int adId)? setAdId,
    TResult Function(int id)? setSelectedOffer,
    TResult Function(int id)? withdrawOffer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    TResult Function(int adId)? setAdId,
    TResult Function(int id)? setSelectedOffer,
    TResult Function(int id)? withdrawOffer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_SetAdId value) setAdId,
    required TResult Function(_SetSelectedOffer value) setSelectedOffer,
    required TResult Function(_WithdrawOffer value) withdrawOffer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetAdId value)? setAdId,
    TResult Function(_SetSelectedOffer value)? setSelectedOffer,
    TResult Function(_WithdrawOffer value)? withdrawOffer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetAdId value)? setAdId,
    TResult Function(_SetSelectedOffer value)? setSelectedOffer,
    TResult Function(_WithdrawOffer value)? withdrawOffer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffersEventCopyWith<$Res> {
  factory $OffersEventCopyWith(
          OffersEvent value, $Res Function(OffersEvent) then) =
      _$OffersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OffersEventCopyWithImpl<$Res> implements $OffersEventCopyWith<$Res> {
  _$OffersEventCopyWithImpl(this._value, this._then);

  final OffersEvent _value;
  // ignore: unused_field
  final $Res Function(OffersEvent) _then;
}

/// @nodoc
abstract class _$$_FetchCopyWith<$Res> {
  factory _$$_FetchCopyWith(_$_Fetch value, $Res Function(_$_Fetch) then) =
      __$$_FetchCopyWithImpl<$Res>;
  $Res call({bool? more});
}

/// @nodoc
class __$$_FetchCopyWithImpl<$Res> extends _$OffersEventCopyWithImpl<$Res>
    implements _$$_FetchCopyWith<$Res> {
  __$$_FetchCopyWithImpl(_$_Fetch _value, $Res Function(_$_Fetch) _then)
      : super(_value, (v) => _then(v as _$_Fetch));

  @override
  _$_Fetch get _value => super._value as _$_Fetch;

  @override
  $Res call({
    Object? more = freezed,
  }) {
    return _then(_$_Fetch(
      more == freezed
          ? _value.more
          : more // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_Fetch implements _Fetch {
  const _$_Fetch([this.more]);

  @override
  final bool? more;

  @override
  String toString() {
    return 'OffersEvent.fetch(more: $more)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fetch &&
            const DeepCollectionEquality().equals(other.more, more));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(more));

  @JsonKey(ignore: true)
  @override
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
      __$$_FetchCopyWithImpl<_$_Fetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? more) fetch,
    required TResult Function(int adId) setAdId,
    required TResult Function(int id) setSelectedOffer,
    required TResult Function(int id) withdrawOffer,
  }) {
    return fetch(more);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    TResult Function(int adId)? setAdId,
    TResult Function(int id)? setSelectedOffer,
    TResult Function(int id)? withdrawOffer,
  }) {
    return fetch?.call(more);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    TResult Function(int adId)? setAdId,
    TResult Function(int id)? setSelectedOffer,
    TResult Function(int id)? withdrawOffer,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(more);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_SetAdId value) setAdId,
    required TResult Function(_SetSelectedOffer value) setSelectedOffer,
    required TResult Function(_WithdrawOffer value) withdrawOffer,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetAdId value)? setAdId,
    TResult Function(_SetSelectedOffer value)? setSelectedOffer,
    TResult Function(_WithdrawOffer value)? withdrawOffer,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetAdId value)? setAdId,
    TResult Function(_SetSelectedOffer value)? setSelectedOffer,
    TResult Function(_WithdrawOffer value)? withdrawOffer,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements OffersEvent {
  const factory _Fetch([final bool? more]) = _$_Fetch;

  bool? get more;
  @JsonKey(ignore: true)
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetAdIdCopyWith<$Res> {
  factory _$$_SetAdIdCopyWith(
          _$_SetAdId value, $Res Function(_$_SetAdId) then) =
      __$$_SetAdIdCopyWithImpl<$Res>;
  $Res call({int adId});
}

/// @nodoc
class __$$_SetAdIdCopyWithImpl<$Res> extends _$OffersEventCopyWithImpl<$Res>
    implements _$$_SetAdIdCopyWith<$Res> {
  __$$_SetAdIdCopyWithImpl(_$_SetAdId _value, $Res Function(_$_SetAdId) _then)
      : super(_value, (v) => _then(v as _$_SetAdId));

  @override
  _$_SetAdId get _value => super._value as _$_SetAdId;

  @override
  $Res call({
    Object? adId = freezed,
  }) {
    return _then(_$_SetAdId(
      adId == freezed
          ? _value.adId
          : adId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SetAdId implements _SetAdId {
  const _$_SetAdId(this.adId);

  @override
  final int adId;

  @override
  String toString() {
    return 'OffersEvent.setAdId(adId: $adId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetAdId &&
            const DeepCollectionEquality().equals(other.adId, adId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(adId));

  @JsonKey(ignore: true)
  @override
  _$$_SetAdIdCopyWith<_$_SetAdId> get copyWith =>
      __$$_SetAdIdCopyWithImpl<_$_SetAdId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? more) fetch,
    required TResult Function(int adId) setAdId,
    required TResult Function(int id) setSelectedOffer,
    required TResult Function(int id) withdrawOffer,
  }) {
    return setAdId(adId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    TResult Function(int adId)? setAdId,
    TResult Function(int id)? setSelectedOffer,
    TResult Function(int id)? withdrawOffer,
  }) {
    return setAdId?.call(adId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    TResult Function(int adId)? setAdId,
    TResult Function(int id)? setSelectedOffer,
    TResult Function(int id)? withdrawOffer,
    required TResult orElse(),
  }) {
    if (setAdId != null) {
      return setAdId(adId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_SetAdId value) setAdId,
    required TResult Function(_SetSelectedOffer value) setSelectedOffer,
    required TResult Function(_WithdrawOffer value) withdrawOffer,
  }) {
    return setAdId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetAdId value)? setAdId,
    TResult Function(_SetSelectedOffer value)? setSelectedOffer,
    TResult Function(_WithdrawOffer value)? withdrawOffer,
  }) {
    return setAdId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetAdId value)? setAdId,
    TResult Function(_SetSelectedOffer value)? setSelectedOffer,
    TResult Function(_WithdrawOffer value)? withdrawOffer,
    required TResult orElse(),
  }) {
    if (setAdId != null) {
      return setAdId(this);
    }
    return orElse();
  }
}

abstract class _SetAdId implements OffersEvent {
  const factory _SetAdId(final int adId) = _$_SetAdId;

  int get adId;
  @JsonKey(ignore: true)
  _$$_SetAdIdCopyWith<_$_SetAdId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetSelectedOfferCopyWith<$Res> {
  factory _$$_SetSelectedOfferCopyWith(
          _$_SetSelectedOffer value, $Res Function(_$_SetSelectedOffer) then) =
      __$$_SetSelectedOfferCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$$_SetSelectedOfferCopyWithImpl<$Res>
    extends _$OffersEventCopyWithImpl<$Res>
    implements _$$_SetSelectedOfferCopyWith<$Res> {
  __$$_SetSelectedOfferCopyWithImpl(
      _$_SetSelectedOffer _value, $Res Function(_$_SetSelectedOffer) _then)
      : super(_value, (v) => _then(v as _$_SetSelectedOffer));

  @override
  _$_SetSelectedOffer get _value => super._value as _$_SetSelectedOffer;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_SetSelectedOffer(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SetSelectedOffer implements _SetSelectedOffer {
  const _$_SetSelectedOffer(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'OffersEvent.setSelectedOffer(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetSelectedOffer &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_SetSelectedOfferCopyWith<_$_SetSelectedOffer> get copyWith =>
      __$$_SetSelectedOfferCopyWithImpl<_$_SetSelectedOffer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? more) fetch,
    required TResult Function(int adId) setAdId,
    required TResult Function(int id) setSelectedOffer,
    required TResult Function(int id) withdrawOffer,
  }) {
    return setSelectedOffer(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    TResult Function(int adId)? setAdId,
    TResult Function(int id)? setSelectedOffer,
    TResult Function(int id)? withdrawOffer,
  }) {
    return setSelectedOffer?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    TResult Function(int adId)? setAdId,
    TResult Function(int id)? setSelectedOffer,
    TResult Function(int id)? withdrawOffer,
    required TResult orElse(),
  }) {
    if (setSelectedOffer != null) {
      return setSelectedOffer(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_SetAdId value) setAdId,
    required TResult Function(_SetSelectedOffer value) setSelectedOffer,
    required TResult Function(_WithdrawOffer value) withdrawOffer,
  }) {
    return setSelectedOffer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetAdId value)? setAdId,
    TResult Function(_SetSelectedOffer value)? setSelectedOffer,
    TResult Function(_WithdrawOffer value)? withdrawOffer,
  }) {
    return setSelectedOffer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetAdId value)? setAdId,
    TResult Function(_SetSelectedOffer value)? setSelectedOffer,
    TResult Function(_WithdrawOffer value)? withdrawOffer,
    required TResult orElse(),
  }) {
    if (setSelectedOffer != null) {
      return setSelectedOffer(this);
    }
    return orElse();
  }
}

abstract class _SetSelectedOffer implements OffersEvent {
  const factory _SetSelectedOffer(final int id) = _$_SetSelectedOffer;

  int get id;
  @JsonKey(ignore: true)
  _$$_SetSelectedOfferCopyWith<_$_SetSelectedOffer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WithdrawOfferCopyWith<$Res> {
  factory _$$_WithdrawOfferCopyWith(
          _$_WithdrawOffer value, $Res Function(_$_WithdrawOffer) then) =
      __$$_WithdrawOfferCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$$_WithdrawOfferCopyWithImpl<$Res>
    extends _$OffersEventCopyWithImpl<$Res>
    implements _$$_WithdrawOfferCopyWith<$Res> {
  __$$_WithdrawOfferCopyWithImpl(
      _$_WithdrawOffer _value, $Res Function(_$_WithdrawOffer) _then)
      : super(_value, (v) => _then(v as _$_WithdrawOffer));

  @override
  _$_WithdrawOffer get _value => super._value as _$_WithdrawOffer;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_WithdrawOffer(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_WithdrawOffer implements _WithdrawOffer {
  const _$_WithdrawOffer(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'OffersEvent.withdrawOffer(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WithdrawOffer &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_WithdrawOfferCopyWith<_$_WithdrawOffer> get copyWith =>
      __$$_WithdrawOfferCopyWithImpl<_$_WithdrawOffer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? more) fetch,
    required TResult Function(int adId) setAdId,
    required TResult Function(int id) setSelectedOffer,
    required TResult Function(int id) withdrawOffer,
  }) {
    return withdrawOffer(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    TResult Function(int adId)? setAdId,
    TResult Function(int id)? setSelectedOffer,
    TResult Function(int id)? withdrawOffer,
  }) {
    return withdrawOffer?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? more)? fetch,
    TResult Function(int adId)? setAdId,
    TResult Function(int id)? setSelectedOffer,
    TResult Function(int id)? withdrawOffer,
    required TResult orElse(),
  }) {
    if (withdrawOffer != null) {
      return withdrawOffer(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_SetAdId value) setAdId,
    required TResult Function(_SetSelectedOffer value) setSelectedOffer,
    required TResult Function(_WithdrawOffer value) withdrawOffer,
  }) {
    return withdrawOffer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetAdId value)? setAdId,
    TResult Function(_SetSelectedOffer value)? setSelectedOffer,
    TResult Function(_WithdrawOffer value)? withdrawOffer,
  }) {
    return withdrawOffer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetAdId value)? setAdId,
    TResult Function(_SetSelectedOffer value)? setSelectedOffer,
    TResult Function(_WithdrawOffer value)? withdrawOffer,
    required TResult orElse(),
  }) {
    if (withdrawOffer != null) {
      return withdrawOffer(this);
    }
    return orElse();
  }
}

abstract class _WithdrawOffer implements OffersEvent {
  const factory _WithdrawOffer(final int id) = _$_WithdrawOffer;

  int get id;
  @JsonKey(ignore: true)
  _$$_WithdrawOfferCopyWith<_$_WithdrawOffer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OffersState {
  int get adId => throw _privateConstructorUsedError;
  StateStatus get status => throw _privateConstructorUsedError;
  List<Offer> get offers => throw _privateConstructorUsedError;
  Offer? get selectedOffer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OffersStateCopyWith<OffersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffersStateCopyWith<$Res> {
  factory $OffersStateCopyWith(
          OffersState value, $Res Function(OffersState) then) =
      _$OffersStateCopyWithImpl<$Res>;
  $Res call(
      {int adId, StateStatus status, List<Offer> offers, Offer? selectedOffer});

  $StateStatusCopyWith<$Res> get status;
  $OfferCopyWith<$Res>? get selectedOffer;
}

/// @nodoc
class _$OffersStateCopyWithImpl<$Res> implements $OffersStateCopyWith<$Res> {
  _$OffersStateCopyWithImpl(this._value, this._then);

  final OffersState _value;
  // ignore: unused_field
  final $Res Function(OffersState) _then;

  @override
  $Res call({
    Object? adId = freezed,
    Object? status = freezed,
    Object? offers = freezed,
    Object? selectedOffer = freezed,
  }) {
    return _then(_value.copyWith(
      adId: adId == freezed
          ? _value.adId
          : adId // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      offers: offers == freezed
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
      selectedOffer: selectedOffer == freezed
          ? _value.selectedOffer
          : selectedOffer // ignore: cast_nullable_to_non_nullable
              as Offer?,
    ));
  }

  @override
  $StateStatusCopyWith<$Res> get status {
    return $StateStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }

  @override
  $OfferCopyWith<$Res>? get selectedOffer {
    if (_value.selectedOffer == null) {
      return null;
    }

    return $OfferCopyWith<$Res>(_value.selectedOffer!, (value) {
      return _then(_value.copyWith(selectedOffer: value));
    });
  }
}

/// @nodoc
abstract class _$$_OffersStateCopyWith<$Res>
    implements $OffersStateCopyWith<$Res> {
  factory _$$_OffersStateCopyWith(
          _$_OffersState value, $Res Function(_$_OffersState) then) =
      __$$_OffersStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int adId, StateStatus status, List<Offer> offers, Offer? selectedOffer});

  @override
  $StateStatusCopyWith<$Res> get status;
  @override
  $OfferCopyWith<$Res>? get selectedOffer;
}

/// @nodoc
class __$$_OffersStateCopyWithImpl<$Res> extends _$OffersStateCopyWithImpl<$Res>
    implements _$$_OffersStateCopyWith<$Res> {
  __$$_OffersStateCopyWithImpl(
      _$_OffersState _value, $Res Function(_$_OffersState) _then)
      : super(_value, (v) => _then(v as _$_OffersState));

  @override
  _$_OffersState get _value => super._value as _$_OffersState;

  @override
  $Res call({
    Object? adId = freezed,
    Object? status = freezed,
    Object? offers = freezed,
    Object? selectedOffer = freezed,
  }) {
    return _then(_$_OffersState(
      adId: adId == freezed
          ? _value.adId
          : adId // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      offers: offers == freezed
          ? _value._offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
      selectedOffer: selectedOffer == freezed
          ? _value.selectedOffer
          : selectedOffer // ignore: cast_nullable_to_non_nullable
              as Offer?,
    ));
  }
}

/// @nodoc

class _$_OffersState implements _OffersState {
  const _$_OffersState(
      {this.adId = 0,
      this.status = const StateStatus(),
      final List<Offer> offers = const [],
      this.selectedOffer})
      : _offers = offers;

  @override
  @JsonKey()
  final int adId;
  @override
  @JsonKey()
  final StateStatus status;
  final List<Offer> _offers;
  @override
  @JsonKey()
  List<Offer> get offers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offers);
  }

  @override
  final Offer? selectedOffer;

  @override
  String toString() {
    return 'OffersState(adId: $adId, status: $status, offers: $offers, selectedOffer: $selectedOffer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OffersState &&
            const DeepCollectionEquality().equals(other.adId, adId) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other._offers, _offers) &&
            const DeepCollectionEquality()
                .equals(other.selectedOffer, selectedOffer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(adId),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(_offers),
      const DeepCollectionEquality().hash(selectedOffer));

  @JsonKey(ignore: true)
  @override
  _$$_OffersStateCopyWith<_$_OffersState> get copyWith =>
      __$$_OffersStateCopyWithImpl<_$_OffersState>(this, _$identity);
}

abstract class _OffersState implements OffersState {
  const factory _OffersState(
      {final int adId,
      final StateStatus status,
      final List<Offer> offers,
      final Offer? selectedOffer}) = _$_OffersState;

  @override
  int get adId;
  @override
  StateStatus get status;
  @override
  List<Offer> get offers;
  @override
  Offer? get selectedOffer;
  @override
  @JsonKey(ignore: true)
  _$$_OffersStateCopyWith<_$_OffersState> get copyWith =>
      throw _privateConstructorUsedError;
}
