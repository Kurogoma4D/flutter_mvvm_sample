import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:state_notifier/state_notifier.dart';

part 'count.freezed.dart';

const COUNT_KEY = 'pref_count';
const TIMESTAMP_KEY = 'pref_saved_at';

@freezed
abstract class CounterState with _$CounterState {
  const factory CounterState({
    @Default(0) int count,
    @required DateTime savedAt,
    @Default(false) bool isLoaded,
  }) = _CounterState;
}

class CounterController extends StateNotifier<CounterState> {
  CounterController() : super(CounterState(savedAt: DateTime(0))) {
    initialize();
  }

  void initialize() async {
    final prefs = await SharedPreferences.getInstance();
    final count = prefs.getInt(COUNT_KEY) ?? 0;
    final savedAt = DateTime.tryParse(prefs.getString(TIMESTAMP_KEY) ?? '');
    state = CounterState(
      count: count,
      savedAt: savedAt ?? DateTime(0),
      isLoaded: true,
    );
  }

  void saveState(int count) async {
    final prefs = await SharedPreferences.getInstance();
    final now = DateTime.now();
    prefs.setInt(COUNT_KEY, count);
    prefs.setString(TIMESTAMP_KEY, now.toIso8601String());

    state = state.copyWith(count: count, savedAt: now);
  }
}
