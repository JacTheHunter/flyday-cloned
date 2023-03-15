import 'package:freezed_annotation/freezed_annotation.dart';

enum NotificationType {
  @JsonValue('new_ad')
  newAd,
  @JsonValue('new_offer')
  newOffer,
  @JsonValue('new_chat_msg')
  newChatMessage,
  @JsonValue('new_support_service_msg')
  newSupportChatMessage,
  @JsonValue('end_of_flight')
  endOfFlight,
  @JsonValue('custom')
  custom,
}
