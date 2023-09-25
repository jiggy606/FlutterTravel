import 'package:application/cubit/AppCubitLogics.dart';
import 'package:application/cubit/AppCubits.dart';
import 'package:application/pages/DetailPage.dart';
import 'package:application/pages/WelcomePage.dart';
import 'package:application/pages/navpages/MainPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './pages/WelcomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<AppCubits>(
        create: (context) => AppCubits(),
        child: AppCubitLogics(),
      )
    );
  }
}