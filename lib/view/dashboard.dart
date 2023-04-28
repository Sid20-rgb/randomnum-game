import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random Number Generator'),
        backgroundColor: Colors.blue,
        titleTextStyle: const TextStyle(
          fontFamily: 'Source Sans Pro',
          fontSize: 25.0,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/calc');
          },
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Random Number Generator',
              style: TextStyle(
                fontFamily: 'Dongle',
                fontSize: 40.0,
              ),
            ),
          ),
        ),
      ),
    );;
  }
}