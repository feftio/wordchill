import 'dart:math';

class RandomService {
  static final Random random = Random();

  static Random get rand => random;

  static int getIntRange(int from, int to) => random.nextInt(to) + from;

  static double getDoubleRange(double from, int to) =>
      random.nextDouble() * (to - from) + from;

  static int getInt([int max = 100]) => random.nextInt(max);

  static double getDouble() => random.nextDouble();

  static dynamic choose(Iterable<dynamic> iterableObject) =>
      iterableObject.elementAt(random.nextInt(iterableObject.length));
}
