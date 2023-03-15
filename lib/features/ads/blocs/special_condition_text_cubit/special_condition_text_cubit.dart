import 'package:bloc/bloc.dart';

class SpecialConditionTextCubit extends Cubit<bool> {
  final Duration duration;
  SpecialConditionTextCubit({required this.duration}) : super(false);
  void show() {
    if (!state) {
      emit(true);
      Future.delayed(duration).then((_) {
        hide();
      });
    }
  }

  void hide() {
    if (!isClosed && state) {
      emit(false);
    }
  }
}
