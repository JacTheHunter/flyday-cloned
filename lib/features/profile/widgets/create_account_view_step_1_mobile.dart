import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/features/countries_cities/blocs/bloc/countries_cities_bloc.dart';
import 'package:flyday_broker/features/countries_cities/models/city.dart';
import 'package:flyday_broker/features/countries_cities/models/country.dart';
import 'package:image_picker/image_picker.dart';

import '../../../common/models/state_status.dart';
import '../../../common/widgets/add_image_button.dart';
import '../blocs/sign_up_bloc/sign_up_bloc.dart';

class CreateAccountViewStep1Mobile extends StatelessWidget {
  const CreateAccountViewStep1Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final signUpBloc = context.read<SignUpBloc>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: BlocBuilder<SignUpBloc, SignUpState>(
              builder: (context, state) {
                return Column(
                  children: [
                    const Spacer(),
                    Text(
                      'company_info'.tr(),
                      style: context.appTextTheme.authMobileTitle2TextStyle,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      initialValue: state.companyName.value,
                      decoration: InputDecoration(
                        hintText: '${'company_name'.tr()}*',
                        errorText: state.companyName.errorText,
                      ),
                      keyboardType: TextInputType.name,
                      textCapitalization: TextCapitalization.words,
                      onChanged: (value) => signUpBloc.add(SignUpEvent.updateCompanyName(value)),
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
                                  onChanged: (country) =>
                                      country != null ? signUpBloc.add(SignUpEvent.updateCountry(country)) : null),
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
                                    errorText: state.city.errorText,
                                    enabled: citiesState.status is! LoadingStatus,
                                  ),
                                  //     style: context.appTextTheme.inputTextStyle,
                                  hint: Text('${'city'.tr()}*'),
                                  value: state.city.value,
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
                                      city != null ? signUpBloc.add(SignUpEvent.updateCity(city)) : null),
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
                      onChanged: (value) => signUpBloc.add(SignUpEvent.updateZip(value)),
                    ),
                    const Spacer(),
                    AddImageButton(
                      cameraSize: const Size(50, 45),
                      imagePath: state.logoFilePath,
                      onPressed: () async {
                        final ImagePicker picker = ImagePicker();
                        // Pick an image
                        final XFile? image = await picker.pickImage(source: ImageSource.gallery);
                        if (image != null) {
                          signUpBloc.add(SignUpEvent.updateLogoFile(image.path));
                        }
                      },
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'company_logo'.tr(),
                      style: context.appTextTheme.authMobileCaptionTextStyle,
                    ),
                    const Spacer(),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
