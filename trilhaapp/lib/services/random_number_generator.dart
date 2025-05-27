import 'dart:math';

class RandomNumberGeneratorService {
  static int createRandomNum() {
    Random randomNum = Random();
    return randomNum.nextInt(1000);
  }
}
