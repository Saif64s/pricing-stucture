import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MarginWidget extends StatelessWidget {
  const MarginWidget({
    super.key,
  });

// it will be static and will be fetched from APi
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: DataTable(
        headingRowHeight: 22,
        headingRowColor:
            MaterialStateColor.resolveWith((states) => Colors.grey),
        headingTextStyle:
            MaterialStateTextStyle.resolveWith((states) => const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
        dataRowMaxHeight: 35,
        dataRowMinHeight: 25,
        border: TableBorder.all(),
        columns: const [
          DataColumn(label: Text("")),
          DataColumn(
            label: Text("Margins"),
          ),
        ],
        rows: [
          DataRow(
            color: const MaterialStatePropertyAll(Colors.orange),
            cells: [
              DataCell(
                Text(
                  "43%",
                  style: GoogleFonts.nunito(fontWeight: FontWeight.bold),
                ),
              ),
              DataCell(
                Text(
                  "Gross profit Margin (SELISE)",
                  style: GoogleFonts.nunito(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          DataRow(
            color: const MaterialStatePropertyAll(Colors.orange),
            cells: [
              DataCell(
                Text(
                  "50%",
                  style: GoogleFonts.nunito(fontWeight: FontWeight.bold),
                ),
              ),
              DataCell(
                Text(
                  "Net profit Margin (WEB)",
                  style: GoogleFonts.nunito(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
