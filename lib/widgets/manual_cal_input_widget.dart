import 'package:flutter/material.dart';

class ManualCalDiscount extends StatelessWidget {
  const ManualCalDiscount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: DataTable(
        headingRowColor:
            MaterialStateColor.resolveWith((states) => Colors.grey),
        headingTextStyle:
            MaterialStateTextStyle.resolveWith((states) => const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
        dataRowMaxHeight: 25,
        dataRowMinHeight: 20,
        border: TableBorder.all(),
        columns: const [
          DataColumn(label: Text("Net Margin")),
          DataColumn(
            label: Text("Market Price"),
          ),
        ],
        rows: const [
          DataRow(
            cells: [
              DataCell(
                Text(
                  "17.2%",
                ),
              ),
              DataCell(
                Text(
                  "16.2%",
                ),
              ),
            ],
          ),
          DataRow(
            cells: [
              DataCell(
                Text(
                  "17.2%",
                ),
              ),
              DataCell(
                Text(
                  "2.31%",
                ),
              ),
            ],
          ),
          DataRow(
            cells: [
              DataCell(
                Text(
                  "2%",
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
                  "6.21%",
                ),
              ),
              DataCell(
                Text(
                  "1%",
                ),
              ),
            ],
          ),
          DataRow(
            cells: [
              DataCell(
                Text(
                  "27%",
                ),
              ),
              DataCell(
                Text(
                  "26.23%",
                ),
              ),
            ],
          ),
          DataRow(
            cells: [
              DataCell(
                Text(
                  "5%",
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
                  "40%",
                ),
              ),
              DataCell(
                Text(
                  "4%",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
