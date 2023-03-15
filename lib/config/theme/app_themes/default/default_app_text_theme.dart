import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flyday_broker/gen/fonts.gen.dart';

import '../../app_color_scheme.dart';
import '../../app_text_theme.dart';

class DefaultAppTextTheme extends AppTextTheme {
  @override
  TextStyle get inputTextStyle => const TextStyle(
        fontSize: 16,
        color: AppColorScheme.mirage,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get inputHintTextStyle => const TextStyle(
        fontSize: 16,
        color: AppColorScheme.baliHai,
        fontWeight: FontWeight.w400,
      );
  @override
  TextStyle get inputErrorTextStyle => const TextStyle(
        color: AppColorScheme.pomegranate,
      );

  @override
  TextStyle get inputSuffixTextStyle => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get authMobileTitleTextStyle => const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get authMobileTitle2TextStyle => const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w700,
        color: AppColorScheme.haiti,
      );
  @override
  TextStyle get authMobileTextStyle => const TextStyle(
        fontSize: 16,
        color: AppColorScheme.baliHai,
      );

  @override
  TextStyle get elevatedButtonTextStyle => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontFamily: FontFamily.ubuntu,
      );
  @override
  TextStyle get outlinedTextStyle => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColorScheme.black,
        fontFamily: FontFamily.ubuntu,
      );
  @override
  TextStyle get authMobileCaptionTextStyle => const TextStyle(
        fontSize: 12,
      );
  @override
  TextStyle get authMobileCaptionLinkTextStyle => const TextStyle(
        color: AppColorScheme.denim,
      );

  @override
  TextStyle get appBarTitleTextStyle => const TextStyle(
        color: AppColorScheme.blackRussian,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );
  @override
  TextStyle get createAccountStepTextStyle => const TextStyle(
        color: AppColorScheme.baliHai,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get authWebOnboardingTextStyle => const TextStyle(
        color: AppColorScheme.white,
        fontSize: 22,
      );
  @override
  TextStyle get authWebTitleTextStyle => const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w700,
      );
  @override
  TextStyle get authWebTextStyle => const TextStyle(
        fontSize: 16,
        color: AppColorScheme.baliHai,
      );
  @override
  TextStyle get authWebFooterTextStyle => const TextStyle(
        fontSize: 12,
        color: AppColorScheme.baliHai,
      );
  @override
  TextStyle get stepIndicatorWebTextStyle => const TextStyle(
        fontSize: 16,
      );
  @override
  TextStyle get stepIndicatorActiveWebTextStyle => const TextStyle(
        fontSize: 16,
        color: AppColorScheme.white,
      );
  @override
  TextStyle get adsViewFooterWebCompanyTextStyle => const TextStyle(
        fontSize: 14,
      );
  @override
  TextStyle get adsViewWebNavbarTextStyle => const TextStyle(
        fontSize: 16,
        color: AppColorScheme.black,
        fontWeight: FontWeight.w400,
      );
  @override
  TextStyle get countTextStyle => const TextStyle(
        fontSize: 14,
      );

  @override
  TextStyle get adsViewWebNavbarActiveTextStyle => const TextStyle(
        fontSize: 16,
        color: AppColorScheme.denim,
        fontWeight: FontWeight.w400,
      );
  @override
  TextStyle get profileInitialsTextStyle => const TextStyle(
        fontSize: 17,
        color: AppColorScheme.brightSun,
        fontWeight: FontWeight.w500,
      );
  @override
  TextStyle get adsViewWebTitleTextStyle => const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
      );
  @override
  TextStyle get adsViewAdNewStatusTextStyle => const TextStyle(
        fontSize: 14,
        color: AppColorScheme.pomegranate,
      );
  @override
  TextStyle get adsViewAdPendingStatusTextStyle => const TextStyle(
        fontSize: 14,
        color: AppColorScheme.pomegranate,
      );
  @override
  TextStyle get adsViewAdCanceledStatusTextStyle => const TextStyle(
        fontSize: 14,
        color: AppColorScheme.bruntSienna,
      );
  @override
  TextStyle get adsViewAdDoneStatusTextStyle => const TextStyle(
        fontSize: 14,
        color: AppColorScheme.fruitSalad,
      );
  @override
  TextStyle get adsViewWebAdDestinationTextStyle => const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
      );
  @override
  TextStyle get adsViewWebAdDestinationAirportTextStyle => const TextStyle(
        fontSize: 16,
        color: AppColorScheme.dolphin,
      );
  @override
  TextStyle get adsViewWebAdConditionsTextStyle => const TextStyle(
        fontSize: 12,
      );
  @override
  TextStyle get adsViewWebAdDateTimeTextStyle => const TextStyle(
        fontSize: 16,
      );
  @override
  TextStyle get webBackIconTextStyle => const TextStyle(
        fontSize: 16,
        color: AppColorScheme.baliHai,
      );

  @override
  TextStyle get adViewWebAddConditionsTextStyle => const TextStyle(
        fontSize: 16,
      );

  @override
  TextStyle get adMessagesButtonTextStyle => const TextStyle(
        fontSize: 19,
        fontWeight: FontWeight.w500,
        color: AppColorScheme.mirage,
      );

  @override
  TextStyle get adViewWebAdBrokersAnswersCountTextStyle => const TextStyle(
        fontSize: 12,
      );

  @override
  TextStyle get adViewWebAdOffersTitleTextStyle => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get adViewWebAdOfferPriceTextStyle => const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get adViewMobileAdOfferPriceTextStyle => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get adViewMobileAdOfferTextStyle => const TextStyle(
        fontSize: 14,
      );

  @override
  TextStyle get adViewWebAdOfferWithdrawButtonTextStyle => const TextStyle(
        fontSize: 14,
        color: AppColorScheme.mirage,
      );

  @override
  TextStyle get adViewWebAdOfferNameTextStyle => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get adViewMobileAdOfferNameTextStyle => const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get adViewWebAdOfferLabelTextStyle => const TextStyle(
        fontSize: 14,
        color: AppColorScheme.dolphin,
      );

  @override
  TextStyle get adViewWebAdOfferTimeAndPlacesCountTextStyle => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get adViewWebAdOfferValidUntilTextStyle => const TextStyle(
        fontSize: 14,
        color: AppColorScheme.dolphin,
      );

  @override
  TextStyle get offerEditorTitleTextStyle => const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get offerEditorInnerTitleTextStyle => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get offerEditorStepTextStyle => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColorScheme.baliHai,
      );

  @override
  TextStyle get offerEditorStepActiveTextStyle => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );
  @override
  TextStyle get offerEditorStepNumberActiveTextStyle => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColorScheme.white,
      );

  @override
  TextStyle get offerEditorConditionActiveTextStyle => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColorScheme.denim,
      );
  @override
  TextStyle get offerEditorConditionTextStyle => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );
  @override
  TextStyle get offerEditorConditionCheckboxTextStyle => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColorScheme.mirage,
      );
  @override
  TextStyle get offerEditorConditionCheckboxActiveTextStyle => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColorScheme.denim,
      );
  @override
  TextStyle get secondaryButtonWebTextStyle => const TextStyle(
        color: AppColorScheme.mirage,
        fontWeight: FontWeight.w500,
      );
  @override
  TextStyle get secondaryButtonTextStyle => const TextStyle(
        color: AppColorScheme.denim,
      );
  @override
  TextStyle get adsViewTitleTextStyle => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      );
  @override
  TextStyle get adsViewMobileAdDestinationTextStyle => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      );
  @override
  TextStyle get adsViewMobileAdDestinationAirportTextStyle => const TextStyle(
        fontSize: 12,
        color: AppColorScheme.dolphin,
      );
  @override
  TextStyle get adsViewMobileAdDateTimeTextStyle => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      );
  @override
  TextStyle get adsViewMobileInnerTitle => const TextStyle(
        fontSize: 12,
      );
  @override
  TextStyle get offerViewMobilePriceTextStyle => const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get offerViewMobileNameTextStyle => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get offerViewMobileValidUntilTextStyle => const TextStyle(
        fontSize: 14,
        color: AppColorScheme.dolphin,
      );

  @override
  TextStyle get offerViewMobileTimeAndSeatLabelTextStyle => const TextStyle(
        fontSize: 13,
        color: AppColorScheme.dolphin,
      );

  @override
  TextStyle get offerViewMobileTitleTextStyle => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get offerEditorTitleInnerTextStyle => const TextStyle(
        fontSize: 12,
      );

  @override
  TextStyle get bottomSheetTitleTextStyle => const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get bottomSheetOptionTextStyle => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get bottomSheetOptionSelectedTextStyle => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColorScheme.denim,
      );
  @override
  TextStyle get aircraftSearchTextStyle => const TextStyle(
        fontSize: 16,
      );
  @override
  TextStyle get aircraftSearchTabBarTextStyle => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColorScheme.baliHai,
      );
  @override
  TextStyle get aircraftSearchResultItemTitleTextStyle => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      );
  @override
  TextStyle get aircraftSearchResultItemSubtitleTextStyle => const TextStyle(
        fontSize: 12,
        color: AppColorScheme.baliHai,
      );
  @override
  TextStyle get aircraftSearchResultItemIconCheckTextStyle => const TextStyle(
        color: AppColorScheme.denim,
      );
  @override
  TextStyle get aircraftSearchResultItemIconDeleteTextStyle => const TextStyle(
        color: AppColorScheme.pomegranate,
      );
  @override
  TextStyle get appCalendarDatePickerMonthTextStyle => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      );
  @override
  TextStyle get appCalendarDatePickerWeekDayTextStyle => const TextStyle(
        fontSize: 12,
      );
  @override
  TextStyle get appCalendarDatePickerDayTextStyle => const TextStyle(
        fontSize: 16,
      );
  @override
  TextStyle get appCalendarDatePickerInactiveDayTextStyle => const TextStyle(
        fontSize: 16,
        color: AppColorScheme.frenchGray,
      );
  @override
  TextStyle get appCalendarDatePickerSelectedDayTextStyle => const TextStyle(
        fontSize: 16,
        color: AppColorScheme.white,
      );
  @override
  TextStyle get appSpinnerTimePickerTextStyle => const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: AppColorScheme.mirage,
      );

  @override
  TextStyle get appSpinnerTimePickerTextStyle36 => TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: AppColorScheme.mirage.withOpacity(.36),
      );

  @override
  TextStyle get appSpinnerTimePickerTextStyle12 => TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: AppColorScheme.mirage.withOpacity(.12),
      );

  @override
  TextStyle get dialogTitleTextStyle => const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: AppColorScheme.mirage,
      );
  @override
  TextStyle get dialogContentTextStyle => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppColorScheme.baliHai,
      );
  @override
  TextStyle get dialogSecondaryActionTextStyle => const TextStyle(
        color: AppColorScheme.mirage,
      );
  @override
  TextStyle get noAdsTextStyle => const TextStyle(
        color: AppColorScheme.dolphin,
      );
  @override
  TextStyle get aboutTitleTextStyle => const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
      );
  @override
  TextStyle get aboutLogoTextStyle => const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
      );
  @override
  TextStyle get aboutVersionTextStyle => const TextStyle(
        fontSize: 12,
        color: AppColorScheme.baliHai,
      );

  //Menu mobile
  @override
  TextStyle get menuProfileAvatarTextStyle => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: AppColorScheme.brightSun,
      );
  @override
  TextStyle get menuProfileNameTextStyle => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      );
  @override
  TextStyle get menuProfileEditButtonTextStyle => const TextStyle(
        fontSize: 12,
        color: AppColorScheme.mirage,
      );
  @override
  TextStyle get menuItemTextStyle => const TextStyle(
        fontSize: 16,
      );
  @override
  TextStyle get menuItemValueTextStyle => const TextStyle(
        color: AppColorScheme.regentGray,
      );

  //Profile
  @override
  TextStyle get profileEditSubTitle => const TextStyle(
        fontSize: 12,
      );

  ////CHAT
  @override
  TextStyle get chatRestrictedTextStyle => const TextStyle(
        fontSize: 12,
      );
  @override
  TextStyle get chatMessageTextStyle => const TextStyle(
        fontSize: 14,
      );
  @override
  TextStyle get chatMessageOwnTextStyle => const TextStyle(
        fontSize: 14,
        color: AppColorScheme.white,
      );
  @override
  TextStyle get chatMessageFileSizeTextStyle => TextStyle(
        fontSize: 14,
        color: AppColorScheme.mirage.withOpacity(.4),
      );
  @override
  TextStyle get chatMessageOwnFileSizeTextStyle => TextStyle(
        fontSize: 14,
        color: AppColorScheme.white.withOpacity(.4),
      );
  @override
  TextStyle get chatMessageDateTextStyle => const TextStyle(
        fontSize: 14,
        color: AppColorScheme.baliHai,
        fontWeight: FontWeight.w500,
      );
  @override
  TextStyle get chatMessageTimeTextStyle => const TextStyle(
        fontSize: 12,
        color: AppColorScheme.dolphin,
      );
  //Mobile
  @override
  TextStyle get appBarChatNameTextStyle => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );
  @override
  TextStyle get chatInputMobileHintTextStyle => const TextStyle(
        fontSize: 12,
        color: AppColorScheme.haiti,
      );
  @override
  TextStyle get chatInputMobileTextStyle => const TextStyle(
        fontSize: 12,
      );
  @override
  TextStyle get chatInputMobileAttachModalBottomSheetTextStyle => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );
  //Web
  @override
  TextStyle get topBarChatNameTextStyle => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );

  ////File Manager
  @override
  TextStyle get sectionTextStyle => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get fileNameTextStyle => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get fileSizeTextStyle => const TextStyle(
        fontSize: 12,
        color: AppColorScheme.baliHai,
      );

  @override
  TextStyle get noFilesTextStyle => const TextStyle(
        fontSize: 16,
        color: AppColorScheme.baliHai,
      );

  ////Notifications
  @override
  TextStyle get emptyNotificationsTextStyle => const TextStyle(
        fontSize: 16,
        color: AppColorScheme.baliHai,
      );
  @override
  TextStyle get notificationItemTitleTextStyle => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );
  @override
  TextStyle get notificationItemDescriptionTextStyle => const TextStyle(
        fontSize: 14,
      );
  @override
  TextStyle get notificationItemDateTimeTextStyle => const TextStyle(
        fontSize: 14,
        color: AppColorScheme.baliHai,
      );
  @override
  TextStyle get innerPushTitleTextStyle => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );
  @override
  TextStyle get innerPushContentTextStyle => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );
}
