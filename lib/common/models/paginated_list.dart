import 'package:json_annotation/json_annotation.dart';
part 'paginated_list.g.dart';

@JsonSerializable(genericArgumentFactories: true, fieldRename: FieldRename.snake)
class PaginatedList<T> {
  final int page;
  final int totalPages;
  final int totalObjects;
  final List<T> results;

  PaginatedList({
    required this.page,
    required this.totalPages,
    required this.totalObjects,
    required this.results,
  });
  factory PaginatedList.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$PaginatedListFromJson(json, fromJsonT);
  Map<String, dynamic> toJson(Object Function(T value) toJsonT) => _$PaginatedListToJson(this, toJsonT);
}
