import 'package:bw1_machine_test/view/screens/landing_screen.dart';
import 'package:bw1_machine_test/view_model/bloc/bloc.dart';
import 'package:bw1_machine_test/view_model/services/api_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotificationBloc(NotificationServices()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Colors.white),
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Inter',
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: LandingScreen(),
      ),
    );
  }
}
