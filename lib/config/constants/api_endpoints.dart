class ApiEndPoints {
  //Base
  static const String kApiDomain = 'dev.flyday.io';
  static const String kApiBaseUrl = 'https://$kApiDomain';
  static const String kApiEndPointBase = '$kApiBaseUrl/api/v1/broker';

  static const String kApiEndPointTokenRefresh = '/token/refresh/';

  static const String kApiEndPointCountries = '/countries/';
  static const String kApiEndPointCities = '/cities';

  static const String kApiEndPointAccount = '/account/';
  static const String kApiEndPointAccountCheckEmail = '/account/check-email/';
  static const String kApiEndPointAccountRegistration = '/account/registration/';
  static const String kApiEndPointAccountLogin = '/account/login/';
  static const String kApiEndPointAccountDelete = '/account/delete/';
  static const String kApiEndPointAccountResetPassword = '/account/reset-password/';
  static const String kApiEndPointAccountResetPasswordSendEmail = '/account/reset-password/send-email/';
  static const String kApiEndPointAccountNotifications = '/account/notifications/';

  static const String kApiEndPointAircraftGlobal = '/aircraft-global/';
  static const String kApiEndPointAircraftLocal = '/aircraft-local/';
  static const String kApiEndPointPhotos = '/photos/';
  static const String kApiEndPointInfo = '/info/';
  static const String kApiEndPointAircraftType = '/aircraft-type/';

  static const String kApiEndPointAds = '/ads/';

  static const String kApiEndPointCurrencies = '/currencies/';

  static const String kApiEndPointSpecialConditions = '/special-conditions/';

  static const String kApiEndPointOffers = '/offers/';

  static const String kChatApiDomain = 'chat.flyday.io';
  static const String kChatApiBaseUrl = 'https://$kChatApiDomain';
  static const String kChatApiEndPointBase = kChatApiBaseUrl;

  static const String kApiEndPointChats = '/chats/';
  static const String kApiEndPointMessages = '/messages/';
  static const String kApiEndPointTechSupportMessages = '/tech-support/messages/';
  static const String kApiEndPointTechSupportSendMessage = '/tech-support/send-message/';
  static const String kApiEndPointTechSupportUnreadMessages = '/tech-support/unread-messages/';

  static const String kApiEndPointFileManagersSections = '/filemanagers/sections/';
  static const String kApiEndPointFMSections = '/fm/sections/';
  static const String kApiEndPointFMDocuments = '/fm/documents/';
  static const String kApiEndPointDocumentB64 = '/documents-b64/';
  static const String kApiEndPointFileManagersDocuments = '/filemanagers/documents/';

  //Socket
  static const String kSocketChatUrl = 'https://chat.flyday.io/';

  static const String kApiEndPointNotifications = '/notifications/';
}
