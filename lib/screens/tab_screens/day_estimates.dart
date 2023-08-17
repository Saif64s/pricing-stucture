import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pluto_grid/pluto_grid.dart';

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

  @override
  void dispose() {
    _moduleNameController.dispose();
    super.dispose();
  }

  // List<List<String>> _data = [
  //   ['10', '20', '30'],
  //   ['5', '15', '25'],
  //   // Add more rows as needed
  // ];

  // Map<String, TextEditingController> _editingControllers = {};

  // @override
  // void initState() {
  //   super.initState();
  //   _initEditingControllers();
  // }

  // void _initEditingControllers() {
  //   for (int row = 0; row < _data.length; row++) {
  //     for (int col = 0; col < _data[row].length; col++) {
  //       _editingControllers['$row-$col'] =
  //           TextEditingController(text: _data[row][col]);
  //     }
  //   }
  // }

  // void _addRow() {
  //   setState(() {
  //     _data.add(List.generate(_data[0].length, (col) => ''));
  //     _initEditingControllers();
  //   });
  // }

  // void _removeRow() {
  //   if (_data.length > 1) {
  //     setState(() {
  //       _data.removeLast();
  //       _initEditingControllers();
  //     });
  //   }
  // }

  // void _editCell(int row, int col) {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: Text('Edit Cell'),
  //         content: TextField(
  //           controller: _editingControllers['$row-$col'],
  //         ),
  //         actions: <Widget>[
  //           TextButton(
  //             onPressed: () {
  //               setState(() {
  //                 _data[row][col] = _editingControllers['$row-$col']!.text;
  //               });
  //               Navigator.pop(context);
  //             },
  //             child: Text('Save'),
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

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

    // List<int> columnSums = List.generate(_data[0].length, (col) {
    //   int sum = 0;
    //   for (int row = 0; row < _data.length; row++) {
    //     sum += int.tryParse(_data[row][col]) ?? 0;
    //   }
    //   return sum;
    // });

    // return SingleChildScrollView(
    //   scrollDirection: Axis.horizontal,
    //   child: Column(
    //     children: [
    //       DataTable(
    //         columns: List.generate(
    //           _data[0].length,
    //           (col) => DataColumn(label: Text('Column $col')),
    //         ),
    //         rows: List.generate(
    //           _data.length,
    //           (row) => DataRow(
    //             cells: List.generate(
    //               _data[row].length,
    //               (col) => DataCell(
    //                 GestureDetector(
    //                   onTap: () => _editCell(row, col),
    //                   child: Text(_data[row][col]),
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ),
    //       ),
    //       Card(
    //         child: DataTable(
    //           columns: List.generate(
    //             columnSums.length,
    //             (col) => DataColumn(label: Text('')),
    //           ),
    //           rows: [
    //             DataRow(
    //                 cells: List.generate(
    //               columnSums.length,
    //               (col) => DataCell(Text(columnSums[col].toString())),
    //             )),
    //           ],
    //         ),
    //       ),
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           IconButton(
    //             icon: Icon(Icons.add),
    //             onPressed: _addRow,
    //           ),
    //           IconButton(
    //             icon: Icon(Icons.remove),
    //             onPressed: _removeRow,
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    // );
  }

  @override
  bool get wantKeepAlive => true;
}
