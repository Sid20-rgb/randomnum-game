import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CalcView extends StatefulWidget {
  const CalcView({super.key});

  @override
  State<CalcView> createState() => _CalcViewState();
}

class _CalcViewState extends State<CalcView> {
    int button1 = Random().nextInt(100) + 1;
  int button2 = Random().nextInt(100) + 1;
  int score1 = 0;
  int score2 = 0;
  int countClick = 10;
  int correctscore = 0;
  int incorrectscore = 0;

  void button1Pressed() {
    setState(() {
      if (button1 == button2) {
        button1 = Random().nextInt(100) + 1;
        button2 = Random().nextInt(100) + 1;
      }
      if (button1 > button2) {
        score1++;
        correctscore++;
      } else {
        incorrectscore++;
      }
    });
    button1 = Random().nextInt(100) + 1;
    button2 = Random().nextInt(100) + 1;
    countClick--;
  }

  void button2Pressed() {
    setState(() {
      if (button1 == button2) {
        button1 = Random().nextInt(100) + 1;
        button2 = Random().nextInt(100) + 1;
      }
      if (button2 > button1) {
        score2++;
        correctscore++;
      } else {
        incorrectscore++;
      }
    });
    button1 = Random().nextInt(100) + 1;
    button2 = Random().nextInt(100) + 1;
    countClick--;
  }

  void resetAlll() {
    setState(() {
      score1 = 0;
      score2 = 0;
      button1 = Random().nextInt(100) + 1;
      button2 = Random().nextInt(100) + 1;
      countClick = 10;
      correctscore = 0;
      incorrectscore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generates Random Number'),
        backgroundColor: const Color(0XFF3C486B),
        titleTextStyle: const TextStyle(
          fontFamily: 'Source Sans Pro',
          fontSize: 25.0,
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 100.0,
                  width: 150.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: backgroundWala,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: (countClick > 0) ? button1Pressed : null,
                    child: Text(
                      '$button1',
                      style: const TextStyle(
                        fontFamily: 'Dongle',
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                SizedBox(
                  height: 100.0,
                  width: 150.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: backgroundWala,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: (countClick > 0) ? button2Pressed : null,
                    child: Text(
                      '$button2',
                      style: const TextStyle(
                        fontFamily: 'Dongle',
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Text(
                  'Remaining total button clicks : $countClick',
                  style: const TextStyle(
                    fontFamily: 'Dongle',
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Correct score: $correctscore',
                  style: const TextStyle(
                    fontFamily: 'Dongle',
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Incorrect Score : $incorrectscore',
                  style: const TextStyle(
                    fontFamily: 'Dongle',
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60.0,
            width: 200.0,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                // backgroundColor: backgroundWala,
                shape: const StadiumBorder(),
              ),
              onPressed: () {
                resetAlll();
              },
              child: const Text(
                'RESET',
                style: TextStyle(
                  fontFamily: 'Dongle',
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}