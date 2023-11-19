import 'package:bloc/bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() {
    if (state < 15) {
      emit(state + 1);
    } else {
      Fluttertoast.showToast(
        msg: "El límite son 15",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      );
    }
  }
  void decrement() {
    if (state > -15) {
      emit(state - 1);
    } else {
      Fluttertoast.showToast(
        msg: "El límite son -15",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      );
    }
  }
  void reinicio() => emit(0);
}