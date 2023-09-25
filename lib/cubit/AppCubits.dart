import 'package:application/cubit/AppCubitStates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubits extends Cubit <CubitStates> {
  AppCubits() : super(InitialState()) {
    emit(WelcomeState());
  }
}
