import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/features/aircrafts/blocs/aircrafts_global_bloc/aircrafts_global_bloc.dart';
import 'package:flyday_broker/features/aircrafts/blocs/aircrafts_local_bloc/aircrafts_local_bloc.dart';

class AircraftSearchField extends StatefulWidget {
  const AircraftSearchField({Key? key}) : super(key: key);

  @override
  State<AircraftSearchField> createState() => _AircraftSearchFieldState();
}

class _AircraftSearchFieldState extends State<AircraftSearchField> {
  late final TextEditingController _textEditingController;

  @override
  void initState() {
    _textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        controller: _textEditingController,
        autofocus: true,
        onChanged: (value) {
          context.read<AircraftsGlobalBloc>().add(AircraftsGlobalEvent.setSearchPhrase(value));
          context.read<AircraftsLocalBloc>().add(AircraftsLocalEvent.setSearchPhrase(value));
        },
        decoration: InputDecoration(
          hintText: 'enter_jet_number'.tr(),
          border: InputBorder.none,
          errorBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
          filled: false,
          suffixIcon: IconButton(
            onPressed: () {
              _textEditingController.clear();
            },
            icon: Icon(
              Icons.cancel_rounded,
              color: context.appColors.searchCancelIconColor,
            ),
          ),
        ),
      ),
    );
  }
}
