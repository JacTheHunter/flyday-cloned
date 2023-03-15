import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/models/state_status.dart';
import 'package:flyday_broker/common/services/notifications/notifications_service.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/common/widgets/add_image_button.dart';
import 'package:flyday_broker/features/authentication/blocs/bloc/authentication_bloc.dart';
import 'package:flyday_broker/features/profile/blocs/profile_bloc/profile_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../../common/utils/check_state_status.dart';
import '../../../gen/assets.gen.dart';
import '../../countries_cities/blocs/bloc/countries_cities_bloc.dart';
import '../../countries_cities/models/city.dart';
import '../../countries_cities/models/country.dart';
import '../blocs/edit_profile_bloc/edit_profile_bloc.dart';

class EditProfileViewMobile extends StatelessWidget {
  const EditProfileViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final editProfileBloc = context.read<EditProfileBloc>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.appColors.appBarAuthenticationBackgroundColor,
        title: Text('edit'.tr()),
        actions: [
          BlocConsumer<EditProfileBloc, EditProfileState>(
            listener: (context, state) {
              checkStateStatusForError(context, state.status);
              if (state.status is SuccessStatus) {
                context.router.pop();
              }
            },
            builder: (context, state) {
              return state.status is LoadingStatus
                  ? const Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: SizedBox.square(child: Align(child: CircularProgressIndicator())),
                    )
                  : state.hasChanges
                      ? TextButton(
                          onPressed: () {
                            editProfileBloc.add(const EditProfileEvent.save());
                          },
                          child: Text('save'.tr()))
                      : const SizedBox();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: BlocBuilder<EditProfileBloc, EditProfileState>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: AddImageButton(
                      cameraSize: const Size(50, 45),
                      imagePath: state.logoFilePath,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),

                  Center(
                    child: SizedBox(
                      width: 150,
                      child: OutlinedButton.icon(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
                          elevation: MaterialStateProperty.all(0),
                          padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                              vertical: 4,
                              horizontal: 16,
                            ),

                            // elevation: 0,
                          ),
                        ),
                        onPressed: () async {
                          final ImagePicker picker = ImagePicker();
                          // Pick an image
                          final XFile? image = await picker.pickImage(source: ImageSource.gallery);
                          if (image != null) {
                            editProfileBloc.add(EditProfileEvent.updateLogoFile(image.path));
                          }
                        },
                        icon: Icon(
                          Icons.photo_camera_outlined,
                          size: 16,
                          color: context.appColors.menuProfileEditButtonIconColor,
                        ),
                        label: Text(
                          'upload_photo'.tr(),
                          style: context.appTextTheme.menuProfileEditButtonTextStyle,
                        ),
                      ),
                    ),
                  ),
                  // const SizedBox(
                  //   height: 4,
                  // ),
                  Center(
                    child: SizedBox(
                      width: 150,
                      child: OutlinedButton.icon(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
                          elevation: MaterialStateProperty.all(0),
                          padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                              vertical: 4,
                              horizontal: 16,
                            ),

                            // elevation: 0,
                          ),
                        ),
                        onPressed: () async {
                          editProfileBloc.add(const EditProfileEvent.updateLogoFile(''));
                        },
                        icon: Icon(
                          Icons.delete_outline,
                          size: 16,
                          color: context.appColors.menuProfileEditButtonIconColor,
                        ),
                        label: Text(
                          'delete_photo'.tr(),
                          style: context.appTextTheme.menuProfileEditButtonTextStyle,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'company_info'.tr(),
                    style: context.appTextTheme.profileEditSubTitle,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    initialValue: state.companyName.value,
                    decoration: InputDecoration(
                      hintText: '${'company_name'.tr()}*',
                      errorText: state.companyName.errorText,
                    ),
                    keyboardType: TextInputType.name,
                    textCapitalization: TextCapitalization.words,
                    onChanged: (value) => editProfileBloc.add(EditProfileEvent.updateCompanyName(value)),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  BlocBuilder<CountriesCitiesBloc, CountriesCitiesState>(
                    builder: (context, countriesState) {
                      return Column(
                        children: [
                          DropdownButtonHideUnderline(
                            child: DropdownButtonFormField<Country?>(
                                decoration: InputDecoration(
                                  enabled: countriesState.status is! LoadingStatus,
                                  errorText: state.country.errorText,
                                ),
                                //     style: context.appTextTheme.inputTextStyle,
                                hint: Text('${'country'.tr()}*'),
                                value: state.country.value,
                                //   isDense: true,
                                icon: const Icon(CupertinoIcons.chevron_down),
                                borderRadius: BorderRadius.circular(12),

                                //  itemHeight: 50,
                                isExpanded: true,
                                items: countriesState.countries
                                    .map(
                                      (country) => DropdownMenuItem<Country>(
                                        value: country,
                                        child: Text(
                                          country.name,
                                        ),
                                      ),
                                    )
                                    .toList(),
                                onChanged: (country) => country != null
                                    ? editProfileBloc.add(EditProfileEvent.updateCountry(country))
                                    : null),
                          ),
                        ],
                      );
                    },
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  BlocBuilder<CountriesCitiesBloc, CountriesCitiesState>(
                    builder: (context, citiesState) {
                      return Column(
                        children: [
                          DropdownButtonHideUnderline(
                            child: DropdownButtonFormField<City?>(
                                decoration: InputDecoration(
                                  enabled: citiesState.status is! LoadingStatus,
                                  errorText: state.city.errorText,
                                ),
                                //     style: context.appTextTheme.inputTextStyle,
                                hint: Text('${'city'.tr()}*'),
                                value: citiesState.cities.contains(state.city.value) ? state.city.value : null,
                                //   isDense: true,
                                icon: const Icon(CupertinoIcons.chevron_down),
                                borderRadius: BorderRadius.circular(12),

                                //  itemHeight: 50,
                                isExpanded: true,
                                items: citiesState.cities
                                    .map(
                                      (city) => DropdownMenuItem<City>(
                                        value: city,
                                        child: Text(
                                          city.name,
                                        ),
                                      ),
                                    )
                                    .toList(),
                                onChanged: (city) =>
                                    city != null ? editProfileBloc.add(EditProfileEvent.updateCity(city)) : null),
                          ),
                          if (citiesState.status is LoadingStatus) const LinearProgressIndicator(),
                        ],
                      );
                    },
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    initialValue: state.zipCode.value,
                    decoration: InputDecoration(
                      hintText: '${'zip'.tr()}*',
                      counterText: '',
                      errorText: state.zipCode.errorText,
                    ),
                    keyboardType: TextInputType.number,
                    maxLength: 6,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    onChanged: (value) => editProfileBloc.add(EditProfileEvent.updateZip(value)),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'contact_person'.tr(),
                    style: context.appTextTheme.profileEditSubTitle,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    initialValue: state.firstName.value,
                    decoration: InputDecoration(
                      hintText: '${'first_name'.tr()}*',
                      errorText: state.firstName.errorText,
                    ),
                    keyboardType: TextInputType.name,
                    textCapitalization: TextCapitalization.words,
                    onChanged: (value) => editProfileBloc.add(EditProfileEvent.updateFirstName(value)),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    initialValue: state.lastName.value,
                    decoration: InputDecoration(
                      hintText: '${'last_name'.tr()}*',
                      errorText: state.lastName.errorText,
                    ),
                    keyboardType: TextInputType.name,
                    textCapitalization: TextCapitalization.words,
                    onChanged: (value) => editProfileBloc.add(EditProfileEvent.updateLastName(value)),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'contacts'.tr(),
                    style: context.appTextTheme.profileEditSubTitle,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    initialValue: state.websiteAddress.value,
                    decoration: InputDecoration(
                      hintText: 'website_address'.tr(),
                      errorText: state.websiteAddress.errorText,
                      prefixIcon: Align(
                        heightFactor: 1,
                        widthFactor: 1,
                        child: Assets.images.vector.globeInput.svg(),
                      ),
                    ),
                    keyboardType: TextInputType.url,
                    onChanged: (value) => editProfileBloc.add(EditProfileEvent.updateWebsiteAddress(value)),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    initialValue: state.phoneNumber.value,
                    decoration: InputDecoration(
                      hintText: 'phone_number'.tr(),
                      errorText: state.phoneNumber.errorText,
                      prefixIcon: Align(
                        heightFactor: 1,
                        widthFactor: 1,
                        child: Assets.images.vector.phoneInput.svg(),
                      ),
                    ),
                    keyboardType: TextInputType.phone,
                    onChanged: (value) => editProfileBloc.add(EditProfileEvent.updatePhoneNumber(value)),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'social_networks_links'.tr(),
                    style: context.appTextTheme.profileEditSubTitle,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    initialValue: state.telegramLink.value,
                    decoration: InputDecoration(
                      hintText: 'Telegram',
                      errorText: state.telegramLink.errorText,
                      prefixIcon: Align(
                        heightFactor: 1,
                        widthFactor: 1,
                        child: Assets.images.vector.telegram.svg(),
                      ),
                    ),
                    keyboardType: TextInputType.url,
                    onChanged: (value) => editProfileBloc.add(EditProfileEvent.updateTelegramLink(value)),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    initialValue: state.whatsappLink.value,
                    decoration: InputDecoration(
                      hintText: 'Whatsapp',
                      errorText: state.whatsappLink.errorText,
                      prefixIcon: Align(
                        heightFactor: 1,
                        widthFactor: 1,
                        child: Assets.images.vector.whatsapp.svg(),
                      ),
                    ),
                    keyboardType: TextInputType.url,
                    onChanged: (value) => editProfileBloc.add(EditProfileEvent.updateWhatsAppLink(value)),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    initialValue: state.messengerLink.value,
                    decoration: InputDecoration(
                      hintText: 'Messenger',
                      errorText: state.messengerLink.errorText,
                      prefixIcon: Align(
                        heightFactor: 1,
                        widthFactor: 1,
                        child: Assets.images.vector.messenger.svg(),
                      ),
                    ),
                    keyboardType: TextInputType.url,
                    onChanged: (value) => editProfileBloc.add(EditProfileEvent.updateMessengerLink(value)),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      context.read<NotificationsService>().onLogOut();
                      context.read<AuthenticationBloc>().add(const AuthenticationEvent.updateAuthenticationToken());
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: context.appColors.secondaryButtonBackgroundColor,
                      side: BorderSide.none,
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Assets.images.vector.logout.svg(),
                        const SizedBox(
                          width: 13,
                        ),
                        Text(
                          'logout'.tr(),
                          style: context.appTextTheme.adViewWebAdOfferWithdrawButtonTextStyle,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      context.read<ProfileBloc>().add(const ProfileEvent.deleteProfile());
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: context.appColors.dangerButtonBackgroundColor,
                      side: BorderSide.none,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      elevation: 0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Assets.images.vector.deleteAccount.svg(),
                        const SizedBox(
                          width: 13,
                        ),
                        Text(
                          'delete_profile'.tr(),
                          style: context.appTextTheme.adViewWebAdOfferWithdrawButtonTextStyle,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
