import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

class DayHeader extends StatefulWidget {
  const DayHeader({super.key, required this.stateManager});
  final PlutoGridStateManager stateManager;

  @override
  State<DayHeader> createState() => _DayHeaderState();
}

class _DayHeaderState extends State<DayHeader> {
  final faker = Faker();
  int addCount = 1;
  int addedCount = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      widget.stateManager.setSelectingMode(gridSelectingMode);
    });
  }

  void handleAddRows() {
    final newRows = widget.stateManager.getNewRows(count: addCount);

    widget.stateManager.appendRows(newRows);

    widget.stateManager.setCurrentCell(
      newRows.first.cells.entries.first.value,
      widget.stateManager.refRows.length - 1,
    );

    widget.stateManager.moveScrollByRow(
      PlutoMoveDirection.down,
      widget.stateManager.refRows.length - 2,
    );

    widget.stateManager.setKeepFocus(true);
  }

  void handleRemoveCurrentRowButton() {
    widget.stateManager.removeCurrentRow();
  }

  PlutoGridSelectingMode gridSelectingMode = PlutoGridSelectingMode.row;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: handleAddRows,
          // child: const Text('Add rows'),
          icon: const Icon(Icons.add),
        ),
        IconButton(
          onPressed: handleRemoveCurrentRowButton,
          // child: const Text('Add rows'),
          icon: const Icon(Icons.remove),
        ),
      ],
    );
  }
}
