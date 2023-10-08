import 'package:flutter/material.dart';

class AutoCalDiscount extends StatelessWidget {
  const AutoCalDiscount({
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
          DataColumn(
            label: Text("Discount"),
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
                  "17.2%",
                ),
              ),
              DataCell(
                Text(
                  "2.31%",
                ),
              ),
              DataCell(
                Text(
                  "2%",
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
              DataCell(
                Text(
                  "3%",
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
              DataCell(
                Text(
                  "4%",
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
              DataCell(
                Text(
                  "5%",
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
              DataCell(
                Text(
                  "15%",
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
              DataCell(
                Text(
                  "25%",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
