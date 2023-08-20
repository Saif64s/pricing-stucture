import 'package:flutter/material.dart';

class InitalSalesWidget extends StatelessWidget {
  const InitalSalesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          DataTable(
            headingRowColor:
                MaterialStateColor.resolveWith((states) => Colors.grey),
            headingTextStyle:
                MaterialStateTextStyle.resolveWith((states) => const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
            dataRowMaxHeight: 25,
            dataRowMinHeight: 20,
            border: TableBorder.symmetric(),
            columns: const [
              DataColumn(label: Text("")),
              DataColumn(
                label: Text("Inital Sales"),
              ),
              DataColumn(
                label: Text("Total Cost"),
              ),
            ],
            rows:
                //! Web Cost
                const [
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      "",
                    ),
                  ),
                  DataCell(
                    Text(
                      "16.2 ",
                    ),
                  ),
                  DataCell(
                    Text(
                      "1 ",
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      "",
                    ),
                  ),
                  DataCell(
                    Text(
                      "2.31 ",
                    ),
                  ),
                  DataCell(
                    Text(
                      "2 ",
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      "",
                    ),
                  ),
                  DataCell(
                    Text(
                      "0",
                    ),
                  ),
                  DataCell(
                    Text(
                      "3 ",
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      "",
                    ),
                  ),
                  DataCell(
                    Text(
                      "1 ",
                    ),
                  ),
                  DataCell(
                    Text(
                      "4 ",
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      "Web Cost",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.grey,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  DataCell(
                    Text(
                      "26.23 ",
                    ),
                  ),
                  DataCell(
                    Text(
                      "5 ",
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      "",
                    ),
                  ),
                  DataCell(
                    Text(
                      "0",
                    ),
                  ),
                  DataCell(
                    Text(
                      "15 ",
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      "",
                    ),
                  ),
                  DataCell(
                    Text(
                      "4 ",
                    ),
                  ),
                  DataCell(
                    Text(
                      "25 ",
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      "",
                    ),
                  ),
                  DataCell(
                    Text(
                      "4 ",
                    ),
                  ),
                  DataCell(
                    Text(
                      "25 ",
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      "",
                    ),
                  ),
                  DataCell(
                    Text(
                      "4 ",
                    ),
                  ),
                  DataCell(
                    Text(
                      "25 ",
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      "",
                    ),
                  ),
                  DataCell(
                    Text(
                      "4 ",
                    ),
                  ),
                  DataCell(
                    Text(
                      "25 ",
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      "",
                    ),
                  ),
                  DataCell(
                    Text(
                      "4 ",
                    ),
                  ),
                  DataCell(
                    Text(
                      "25 ",
                    ),
                  ),
                ],
              ),

              //! External Dept. Cost
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      "",
                    ),
                  ),
                  DataCell(
                    Text(
                      "0",
                    ),
                  ),
                  DataCell(
                    Text(
                      "0 ",
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      "",
                    ),
                  ),
                  DataCell(
                    Text(
                      "0",
                    ),
                  ),
                  DataCell(
                    Text(
                      "0 ",
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      "External Dept. Cost",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.grey,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  DataCell(
                    Text(
                      "0",
                    ),
                  ),
                  DataCell(
                    Text(
                      "0 ",
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      "",
                    ),
                  ),
                  DataCell(
                    TextField(
                      decoration: InputDecoration(
                        hintText: "input",
                        fillColor: Colors.green,
                        filled: true,
                      ),
                    ),
                  ),
                  DataCell(
                    Text("0 "),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      "",
                    ),
                  ),
                  DataCell(
                    TextField(
                      decoration: InputDecoration(
                        hintText: "input",
                        fillColor: Colors.green,
                        filled: true,
                      ),
                    ),
                  ),
                  DataCell(
                    Text(
                      "0 ",
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      "",
                    ),
                  ),
                  DataCell(
                    TextField(
                      decoration: InputDecoration(
                        hintText: "input",
                        fillColor: Colors.green,
                        filled: true,
                      ),
                    ),
                  ),
                  DataCell(
                    Text(
                      "0 ",
                    ),
                  ),
                ],
              ),

              //! OVERHEAD
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      "Overheads",
                      style: TextStyle(
                        backgroundColor: Colors.grey,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  DataCell(Text("")),
                  DataCell(
                    Text(
                      "",
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    TextField(
                      decoration: InputDecoration(
                        hintText: "input",
                        fillColor: Colors.green,
                        filled: true,
                      ),
                    ),
                  ),
                  DataCell(
                    TextField(
                      decoration: InputDecoration(
                        hintText: "input",
                        fillColor: Colors.green,
                        filled: true,
                      ),
                    ),
                  ),
                  DataCell(
                    TextField(
                      decoration: InputDecoration(
                        hintText: "input",
                        fillColor: Colors.green,
                        filled: true,
                      ),
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    TextField(
                      decoration: InputDecoration(
                        hintText: "input",
                        fillColor: Colors.green,
                        filled: true,
                      ),
                    ),
                  ),
                  DataCell(
                    TextField(
                      decoration: InputDecoration(
                        hintText: "input",
                        fillColor: Colors.green,
                        filled: true,
                      ),
                    ),
                  ),
                  DataCell(
                    TextField(
                      decoration: InputDecoration(
                        hintText: "input",
                        fillColor: Colors.green,
                        filled: true,
                      ),
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    TextField(
                      decoration: InputDecoration(
                        hintText: "input",
                        fillColor: Colors.green,
                        filled: true,
                      ),
                    ),
                  ),
                  DataCell(
                    TextField(
                      decoration: InputDecoration(
                        hintText: "input",
                        fillColor: Colors.green,
                        filled: true,
                      ),
                    ),
                  ),
                  DataCell(
                    TextField(
                      decoration: InputDecoration(
                        hintText: "input",
                        fillColor: Colors.green,
                        filled: true,
                      ),
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    TextField(
                      decoration: InputDecoration(
                        hintText: "input",
                        fillColor: Colors.green,
                        filled: true,
                      ),
                    ),
                  ),
                  DataCell(
                    TextField(
                      decoration: InputDecoration(
                        hintText: "input",
                        fillColor: Colors.green,
                        filled: true,
                      ),
                    ),
                  ),
                  DataCell(
                    TextField(
                      decoration: InputDecoration(
                        hintText: "input",
                        fillColor: Colors.green,
                        filled: true,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          //! Total costs
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: DataTable(
              dataRowMaxHeight: 25,
              dataRowMinHeight: 20,
              border: TableBorder.symmetric(),
              columns: const [
                DataColumn(label: Text("")),
                DataColumn(
                  label: Text(""),
                ),
              ],
              rows: const [
                DataRow(
                  cells: [
                    DataCell(
                      Text(
                        "Gross Total (SELISE Web)",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        "CHF0.00", //? Sum of all total cost col
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      Text(
                        "Internal Total (Other BUs)",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        "CHF0.00",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      Text(
                        "Net Total (SELISE)",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        "CHF0.00",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
