import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pluto_grid/pluto_grid.dart';

class DayHeader extends ConsumerStatefulWidget {
  const DayHeader({super.key, required this.stateManager});
  final PlutoGridStateManager stateManager;

  @override
  ConsumerState<DayHeader> createState() => _DayHeaderState();
}

class _DayHeaderState extends ConsumerState<DayHeader> {
  int addCount = 1;

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

    print(newRows.asMap());
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
          icon: const Icon(Icons.add),
        ),
        IconButton(
          onPressed: handleRemoveCurrentRowButton,
          icon: const Icon(Icons.remove),
        ),
      ],
    );
  }
}
