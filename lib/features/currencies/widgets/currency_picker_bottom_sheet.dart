import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/features/currencies/models/currency.dart';

import '../../../common/widgets/app_bottom_sheet.dart';
import '../../../common/widgets/app_bottom_sheet_option.dart';
import '../blocs/currencies_bloc/currencies_bloc.dart';

class CurrencyPickerBottomSheet extends StatelessWidget {
  final Currency? selectedCurrency;
  final void Function(Currency value) onSelect;

  const CurrencyPickerBottomSheet({Key? key, this.selectedCurrency, required this.onSelect}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBottomSheet(
      child: BlocBuilder<CurrenciesBloc, CurrenciesState>(
        builder: (context, state) {
          return Column(
            children: state.currencies
                .map((c) => AppBottomSheetOption(
                    isSelected: c == selectedCurrency,
                    text: c.formated,
                    onTap: () {
                      onSelect(c);
                      context.router.pop();
                    }))
                .toList(),
          );
        },
      ),
    );
  }
}
