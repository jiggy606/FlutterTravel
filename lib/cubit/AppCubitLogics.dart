import 'package:application/cubit/AppCubitStates.dart';
import 'package:application/cubit/AppCubits.dart';
import 'package:application/pages/WelcomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({super.key});

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(builder: (context, state) {
        if (state is WelcomeState) {
          return WelcomePage();
        } else {
          return Container();
        }
      }),
    );
  }
}
