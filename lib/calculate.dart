import 'dart:math';

class calculates {
  static const maxRandom = 100;
  int? _answer;

  int Count = 0;
  int sum=0;

  //calculates(answers);

  calculates(var mainGame) {

    _answer=mainGame;
  }

  int doGuess(int num) {
    if (num > _answer!) {
      Count++;
      sum=Count;
      return 1;

    } else if (num < _answer!) {
      Count++;
      sum=Count;
      return -1;
    } else {
      Count++;
      sum=Count;

      return 0;
    }
  }
}
