import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/infinite_list_pagination.dart';

import '../../../common/utils/check_state_status.dart';
import '../../../common/utils/platform.dart';
import '../../offers/blocs/offer_editor_bloc/offer_editor_bloc.dart';
import '../blocs/aircrafts_local_bloc/aircrafts_local_bloc.dart';
import 'aircraft_search_result_item_mobile.dart';

class AircraftsLocalSearchResultsMobile extends StatelessWidget {
  const AircraftsLocalSearchResultsMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InfiniteListPagination(
      builder: (context, scrollController) => BlocConsumer<AircraftsLocalBloc, AircraftsLocalState>(
        listener: (context, state) {
          checkStateStatusForError(context, state.status);
        },
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.localAircrafts.length,
            itemBuilder: (context, index) => AircraftSearchResultItemMobile(
              item: state.localAircrafts[index],
              onCheck: () {
                context.read<OfferEditorBloc>().add(OfferEditorEvent.setAircraft(state.localAircrafts[index], true));
                if (isWebDesktop) {
                  context.read<OfferEditorBloc>().add(const OfferEditorEvent.activateWebSearchAircraftWidget());
                } else {
                  context.router.pop();
                }
              },
              onDelete: () {
                context.read<AircraftsLocalBloc>().add(AircraftsLocalEvent.delete(state.localAircrafts[index].id!));
              },
            ),
            controller: scrollController,
          );
        },
      ),
    );
  }
}
