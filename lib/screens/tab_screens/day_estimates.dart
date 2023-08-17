import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:pricing_structure/models/day_model.dart';

import '../../consts/day_vars.dart';
import 'day_header.dart';

class DayEstimate extends ConsumerStatefulWidget {
  const DayEstimate({super.key});

  @override
  ConsumerState<DayEstimate> createState() => _DayEstimateState();
}

class _DayEstimateState extends ConsumerState<DayEstimate>
    with AutomaticKeepAliveClientMixin {
  final _moduleNameController = TextEditingController();
  int inputText = 0;
  late PlutoGridStateManager stateManager;
  final dayItem = DayModelUtils();

  @override
  void dispose() {
    _moduleNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    // final _index = ModalRoute.of(context)!.settings.arguments;

    // return Center(
    //   child: Column(
    //     children: [
    //       TextField(
    //         onChanged: (value) {
    //           ref.read(dayProvider.notifier).changeNumber(int.tryParse(value)!);
    //         },
    //         controller: _moduleNameController,
    //         decoration: InputDecoration(
    //             border: OutlineInputBorder(),
    //             hintText: "${ref.watch(dayProvider)}"),
    //       ),
    //       Text("${ref.watch(dayProvider)}")
    //     ],
    //   ),
    // );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
      child: PlutoGrid(
        columns: columns,
        rows: rows,
        onChanged: (PlutoGridOnChangedEvent event) {
          print(event);

          stateManager.notifyListeners();
        },
        onLoaded: (PlutoGridOnLoadedEvent event) async {
          stateManager = event.stateManager;
        },
        createHeader: (stateManager) => DayHeader(stateManager: stateManager),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
