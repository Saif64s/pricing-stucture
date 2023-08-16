import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:pricing_structure/screens/tab_screens/day_header.dart';

class DayEstimate extends ConsumerStatefulWidget {
  const DayEstimate({super.key});

  @override
  ConsumerState<DayEstimate> createState() => _DayEstimateState();
}

class _DayEstimateState extends ConsumerState<DayEstimate> {
  final _moduleNameController = TextEditingController();
  int inputText = 0;
  late PlutoGridStateManager stateManager;

  List<PlutoColumn> columns = [
    PlutoColumn(
      title: 'Module',
      field: 'module_field',
      type: PlutoColumnType.text(),
      frozen: PlutoColumnFrozen.start,
    ),
    PlutoColumn(
      title: 'Feature/Description',
      field: 'feature_field',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'BE',
      field: 'num_BE',
      type: PlutoColumnType.number(
        format: '#,###.##',
      ),
      footerRenderer: (rendererContext) {
        return PlutoAggregateColumnFooter(
          rendererContext: rendererContext,
          type: PlutoAggregateColumnType.sum,
          format: '#,###.##',
          alignment: Alignment.center,
          titleSpanBuilder: (text) {
            return [
              const TextSpan(
                text: 'Sum',
                style: TextStyle(color: Colors.red),
              ),
              const TextSpan(text: ' : '),
              TextSpan(text: text),
            ];
          },
        );
      },
    ),
    PlutoColumn(
      title: 'FE',
      field: 'num_FE',
      type: PlutoColumnType.number(
        format: '#,###.##',
      ),
      footerRenderer: (rendererContext) {
        return PlutoAggregateColumnFooter(
          rendererContext: rendererContext,
          type: PlutoAggregateColumnType.sum,
          format: '#,###.##',
          alignment: Alignment.center,
          titleSpanBuilder: (text) {
            return [
              const TextSpan(
                text: 'Sum',
                style: TextStyle(color: Colors.red),
              ),
              const TextSpan(text: ' : '),
              TextSpan(text: text),
            ];
          },
        );
      },
    ),
    PlutoColumn(
      title: 'FS',
      field: 'num_FS',
      type: PlutoColumnType.number(
        format: '#,###.##',
      ),
      footerRenderer: (rendererContext) {
        return PlutoAggregateColumnFooter(
          rendererContext: rendererContext,
          type: PlutoAggregateColumnType.sum,
          format: '#,###.##',
          alignment: Alignment.center,
          titleSpanBuilder: (text) {
            return [
              const TextSpan(
                text: 'Sum',
                style: TextStyle(color: Colors.red),
              ),
              const TextSpan(text: ' : '),
              TextSpan(text: text),
            ];
          },
        );
      },
    ),
    PlutoColumn(
      title: 'BE Real',
      field: 'be_real',
      type: PlutoColumnType.number(
        format: '#,###.##',
      ),
      footerRenderer: (rendererContext) {
        return PlutoAggregateColumnFooter(
          rendererContext: rendererContext,
          type: PlutoAggregateColumnType.sum,
          format: '#,###.##',
          alignment: Alignment.center,
          titleSpanBuilder: (text) {
            return [
              const TextSpan(
                text: 'Sum',
                style: TextStyle(color: Colors.red),
              ),
              const TextSpan(text: ' : '),
              TextSpan(text: text),
            ];
          },
        );
      },
    ),
    PlutoColumn(
      title: 'FE Real',
      field: 'fe_real',
      type: PlutoColumnType.number(
        format: '#,###.##',
      ),
      footerRenderer: (rendererContext) {
        return PlutoAggregateColumnFooter(
          rendererContext: rendererContext,
          type: PlutoAggregateColumnType.sum,
          format: '#,###.##',
          alignment: Alignment.center,
          titleSpanBuilder: (text) {
            return [
              const TextSpan(
                text: 'Sum',
                style: TextStyle(color: Colors.red),
              ),
              const TextSpan(text: ' : '),
              TextSpan(text: text),
            ];
          },
        );
      },
    ),
    PlutoColumn(
      title: 'FS Real',
      field: 'fs_real',
      type: PlutoColumnType.number(
        format: '#,###.##',
      ),
      footerRenderer: (rendererContext) {
        return PlutoAggregateColumnFooter(
          rendererContext: rendererContext,
          type: PlutoAggregateColumnType.sum,
          format: '#,###.##',
          alignment: Alignment.center,
          titleSpanBuilder: (text) {
            return [
              const TextSpan(
                text: 'Sum',
                style: TextStyle(color: Colors.red),
              ),
              const TextSpan(text: ' : '),
              TextSpan(text: text),
            ];
          },
        );
      },
    ),
    PlutoColumn(
      title: 'Total(Before Buffer)',
      field: 'before_buffer',
      type: PlutoColumnType.number(
        format: '#,###.##',
      ),
      footerRenderer: (rendererContext) {
        return PlutoAggregateColumnFooter(
          rendererContext: rendererContext,
          type: PlutoAggregateColumnType.sum,
          format: '#,###.##',
          alignment: Alignment.center,
          titleSpanBuilder: (text) {
            return [
              const TextSpan(
                text: 'Sum',
                style: TextStyle(color: Colors.red),
              ),
              const TextSpan(text: ' : '),
              TextSpan(text: text),
            ];
          },
        );
      },
    ),
    PlutoColumn(
      title: 'Buffer',
      field: 'buffer_field',
      type: PlutoColumnType.number(
        format: '#,###.##',
      ),
      readOnly: true,
    ),
  ];

  List<PlutoRow> rows = [
    PlutoRow(
      cells: {
        'module_field': PlutoCell(value: 'Module Name | Total'),
        'feature_field': PlutoCell(value: 'Project Name'),
        'num_BE': PlutoCell(value: '1'),
        'num_FE': PlutoCell(value: '0'),
        'num_FS': PlutoCell(value: '0'),
        'be_real': PlutoCell(value: 1.25),
        'fe_real': PlutoCell(value: '0'),
        'fs_real': PlutoCell(value: '0'),
        'before_buffer': PlutoCell(value: '1'),
        'buffer_field': PlutoCell(value: 1.25),
      },
    ),
  ];

  @override
  void dispose() {
    _moduleNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final _index = ModalRoute.of(context)!.settings.arguments;

    // return Center(
    //   child: TextField(
    //     onChanged: (value) {
    //       ref.read(dayProvider.notifier).changeNumber(int.tryParse(value)!);
    //     },
    //     controller: _moduleNameController,
    //     decoration: InputDecoration(
    //         border: OutlineInputBorder(),
    //         hintText: "${ref.watch(dayProvider)}"),
    //   ),
    // );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
      child: PlutoGrid(
        columns: columns,
        rows: rows,
        onChanged: (PlutoGridOnChangedEvent event) {
          print(event);

          // if (event.row.cells['status']!.value == 'saved') {
          //   event.row.cells['status']!.value = 'edited';
          // }

          stateManager.notifyListeners();
        },
        onLoaded: (PlutoGridOnLoadedEvent event) {
          stateManager = event.stateManager;
        },
        createHeader: (stateManager) => DayHeader(stateManager: stateManager),
      ),
    );
  }
}
