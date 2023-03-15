import 'package:bloc/bloc.dart';
import 'package:flyday_broker/features/ads/models/ad_status.dart';

class AdsViewMobileFilterBottomSheetCubit extends Cubit<AdStatus> {
  final AdStatus initialStatus;
  AdsViewMobileFilterBottomSheetCubit(this.initialStatus) : super(initialStatus);

  void setStatus(AdStatus status) => emit(status);
}
