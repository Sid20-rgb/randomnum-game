import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:game_app/view/dashboard.dart';
import 'package:game_app/view/randomnum.dart';

class RandomNum extends StatelessWidget {
  const RandomNum({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Dashboard(),
        '/calc': (context) => const CalcView(),
      },
    );
  }
}