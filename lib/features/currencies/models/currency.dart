import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency.freezed.dart';
part 'currency.g.dart';

@freezed
class Currency with _$Currency {
  const Currency._();
  const factory Currency({
    required final int id,
    required final String name,
    required final String code,
    required final String symbol,
  }) = _Currency;

  factory Currency.fromJson(Map<String, dynamic> json) => _$CurrencyFromJson(json);

  String get formated => '$symbol ${code.toUpperCase()}';
}
