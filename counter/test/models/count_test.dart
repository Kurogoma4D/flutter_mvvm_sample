import 'package:counter/models/count.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  group('Counter model test', () {
    final counter = CounterController();

    test('Can Create SharedPreferences', () async {
      final pref = await SharedPreferences.getInstance();
      pref.setInt('test_value', 1);

      expect(pref.getInt('test_value'), 1);
    });

    test('Counter should be initialized on non-saved state', () async {
      expect(counter.state.isLoaded, true);
      expect(counter.state.count, 0);
      expect(counter.state.savedAt, DateTime(0));
    });

    test('Counter should be initialized on non-saved state', () async {
      expect(counter.state.isLoaded, true);
      expect(counter.state.count, 0);
      expect(counter.state.savedAt, DateTime(0));
    });

    test('State should be updated on fire saveState', () async {
      final saveTime = DateTime.now();
      counter.saveState(20, saveTime);
      await Future.delayed(const Duration(milliseconds: 250));

      expect(counter.state.count, 20);
      expect(counter.state.savedAt, saveTime);
    });

    test('State should be initialized on saved state', () async {
      final saveTime = DateTime.now();
      counter.saveState(30, saveTime);
      await Future.delayed(const Duration(milliseconds: 250));

      counter.initialize();
      expect(counter.state.count, 30);
      expect(counter.state.savedAt, saveTime);
    });
  });
}
