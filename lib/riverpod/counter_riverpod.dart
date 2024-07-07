import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterRiverpod extends ChangeNotifier {
  int count;
  CounterRiverpod({required this.count});

  void incrementCounter() {
    count++;
    notifyListeners();
  }

  void decrementCounter() {
    count--;
    notifyListeners();
  }
}

final ChangeNotifierProvider<CounterRiverpod> counterRiverpod =
    ChangeNotifierProvider<CounterRiverpod>((ref) {
  return CounterRiverpod(count: 0);
});
