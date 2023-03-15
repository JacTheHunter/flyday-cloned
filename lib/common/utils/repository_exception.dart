import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_exception.freezed.dart';

@freezed
class RepositoryException with _$RepositoryException {
  const factory RepositoryException({
    required String message,
    @Default(false) bool showPopUp,
  }) = _RepositoryException;
}
