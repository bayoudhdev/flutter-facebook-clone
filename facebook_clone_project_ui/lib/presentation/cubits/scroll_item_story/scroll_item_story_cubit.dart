import 'package:bloc/bloc.dart';

class ScrollItemStoryCubit extends Cubit<double> {
  ScrollItemStoryCubit() : super(0);

  void setOffset(double newOffset) => emit(newOffset);
}
