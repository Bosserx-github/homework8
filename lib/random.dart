import 'dart:math';
import 'dart:math' show Random;
class randoms{
  var random = Random();
  var answers;
  randoms(){
    answers = random.nextInt(100) + 1;
  }
}