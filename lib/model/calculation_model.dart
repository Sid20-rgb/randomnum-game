import 'dart:math';

class CalcModel {
  int button1 = Random().nextInt(100) + 1;
  int button2 = Random().nextInt(100) + 1;
  int score1 = 0;
  int score2 = 0;
  int countClick = 10;

  void pahiloCase() {
    if (button1 > button2) {
      score1++;
    }
    if (button1 == button2) {
      button1 = Random().nextInt(100) + 1;
      button2 = Random().nextInt(100) + 1;
    }
  }

  void dosroCase() {
    if (button2 > button1) {
      score2++;
    }
    if (button1 == button2) {
      button1 = Random().nextInt(100) + 1;
      button2 = Random().nextInt(100) + 1;
    }
  }

  void updatevalue() {
    button1 = Random().nextInt(100) + 1;
    button2 = Random().nextInt(100) + 1;
    countClick--;
  }

  void nayaValue() {
    score1 = 0;
    score2 = 0;
    button1 = Random().nextInt(100) + 1;
    button2 = Random().nextInt(100) + 1;
    countClick = 10;
  }

  int getButton1() {
    return button1;
  }

  int getButton2() {
    return button2;
  }

  int getScore1() {
    return score1;
  }

  int getScore2() {
    return score2;
  }

  int getCountClick() {
    return countClick;
  }

  void setButton1(int button1) {
    this.button1 = button1;
  }

  void setButton2(int button2) {
    this.button2 = button2;
  }

  void setScore1(int score1) {
    this.score1 = score1;
  }

  void setScore2(int score2) {
    this.score2 = score2;
  }
}
