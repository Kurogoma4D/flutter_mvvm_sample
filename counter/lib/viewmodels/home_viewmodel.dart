import 'package:counter/models/count.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel({this.read}) {
    count = read<CounterState>().count;
    savedAt = read<CounterState>().savedAt;

    read<CounterController>().stream.listen((state) {
      count = state.count;
      savedAt = state.savedAt;
      isLoaded = state.isLoaded;
      notifyListeners();
    });
  }

  int count;
  DateTime savedAt;
  bool isLoaded = false;
  final Locator read;

  void increment() {
    count++;
    notifyListeners();
  }

  void decrement() {
    count--;
    notifyListeners();
  }

  void save() {
    read<CounterController>().saveState(count, DateTime.now());
  }
}
