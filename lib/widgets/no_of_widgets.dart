import 'package:flutter/material.dart';

class NoOfDevWidget extends StatelessWidget {
  const NoOfDevWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: DataTable(
        headingRowColor:
            MaterialStateColor.resolveWith((states) => Colors.grey),
        dataRowMaxHeight: 25,
        dataRowMinHeight: 20,
        border: TableBorder.all(),
        columns: const [
          DataColumn(label: Text("Dev Resources:")),
          DataColumn(
            label: Text("Number"),
          ),
        ],
        rows: const [
          DataRow(
            cells: [
              DataCell(
                Text(
                  "BE",
                ),
              ),
              DataCell(
                Text(
                  "1",
                ),
              ),
            ],
          ),
          DataRow(
            cells: [
              DataCell(
                Text(
                  "FE",
                ),
              ),
              DataCell(
                Text(
                  "0",
                ),
              ),
            ],
          ),
          DataRow(
            cells: [
              DataCell(
                Text(
                  "FS",
                ),
              ),
              DataCell(
                Text(
                  "0",
                ),
              ),
            ],
          ),
          DataRow(
            cells: [
              DataCell(
                Text(
                  "BA",
                ),
              ),
              DataCell(
                Text(
                  "1",
                ),
              ),
            ],
          ),
          DataRow(
            cells: [
              DataCell(
                Text(
                  "QA",
                ),
              ),
              DataCell(
                Text(
                  "0",
                ),
              ),
            ],
          ),
          DataRow(
            cells: [
              DataCell(
                Text(
                  "UX",
                ),
              ),
              DataCell(
                Text(
                  "0",
                ),
              ),
            ],
          ),
          DataRow(
            cells: [
              DataCell(
                Text(
                  "MOCH/Sales",
                ),
              ),
              DataCell(
                Text(
                  "YES",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
