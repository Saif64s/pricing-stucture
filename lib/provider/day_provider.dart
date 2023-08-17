import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pluto_grid/pluto_grid.dart';

// class DayNotifier extends Notifier<dynamic> {
//   @override
//   build() {
//     return 0;
//   }

//   void changeNumber(dynamic number) {
//     state = number;
//   }
// }

// final dayProvider = NotifierProvider<DayNotifier, dynamic>(() => DayNotifier());

class RowPlutoNotifier extends Notifier<List<PlutoRow>> {
  @override
  build() {
    return [];
  }

  void updatePlutoRow(List<PlutoRow> newRow) {
    state = [...newRow, ...state];
  }
}

final rowPlutoProvider = NotifierProvider<RowPlutoNotifier, List<PlutoRow>>(
    () => RowPlutoNotifier());
