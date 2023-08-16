import 'package:flutter_riverpod/flutter_riverpod.dart';

class DayNotifier extends Notifier<dynamic> {
  @override
  build() {
    return 0;
  }

  void changeNumber(dynamic number) {
    state = number;
  }
}

final dayProvider = NotifierProvider<DayNotifier, dynamic>(() => DayNotifier());
