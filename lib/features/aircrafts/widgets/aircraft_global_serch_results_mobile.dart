import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/infinite_list_pagination.dart';
import 'package:flyday_broker/features/aircrafts/blocs/aircrafts_global_bloc/aircrafts_global_bloc.dart';

import '../../../common/utils/check_state_status.dart';
import '../../../common/utils/platform.dart';
import '../../offers/blocs/offer_editor_bloc/offer_editor_bloc.dart';
import 'aircraft_search_result_item_mobile.dart';

class AircraftsGlobalSearchResultsMobile extends StatelessWidget {
  const AircraftsGlobalSearchResultsMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AircraftsGlobalBloc, AircraftsGlobalState>(
      listener: (context, state) {
        checkStateStatusForError(context, state.status);
      },
      builder: (context, state) {
        return InfiniteListPagination(
          builder: (context, scrollController) => ListView(
            controller: scrollController,
            children: [
              if (state.globalAircraft != null)
                AircraftSearchResultItemMobile(
                  item: state.globalAircraft!,
                  onCheck: () {
                    context.read<OfferEditorBloc>().add(OfferEditorEvent.setAircraft(state.globalAircraft!, false));
                    if (isWebDesktop) {
                      context.read<OfferEditorBloc>().add(const OfferEditorEvent.activateWebSearchAircraftWidget());
                    } else {
                      context.router.pop();
                    }
                  },
                ),
            ],
          ),
        );
      },
    );
  }
}
