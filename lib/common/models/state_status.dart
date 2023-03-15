import 'package:freezed_annotation/freezed_annotation.dart';

import 'error_status_message.dart';

part 'state_status.freezed.dart';

@freezed
class StateStatus with _$StateStatus {
  const factory StateStatus() = PureStatus;
  const factory StateStatus.loading() = LoadingStatus;
  const factory StateStatus.success([dynamic data]) = SuccessStatus;
  const factory StateStatus.error(ErrorStatusMessage message) = ErrorStatus;
}
