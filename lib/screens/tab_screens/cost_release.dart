import 'package:flutter/material.dart';

class CostRelease extends StatelessWidget {
  const CostRelease({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ExpansionTile(
              title: const Text(
                "Pricing Calc",
              ),
              children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.amber,
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                "No. of Dev Resources",
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: DataTable(
                    dataRowMaxHeight: 25,
                    dataRowMinHeight: 20,
                    border: TableBorder.all(),
                    columns: [
                      DataColumn(label: Text("Dev Resources:")),
                      DataColumn(label: Text("Number")),
                    ],
                    rows: [
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
                )
              ],
            ),
            const ExpansionTile(
              childrenPadding: EdgeInsets.all(16),
              title: Text(
                "Margins",
              ),
              children: [
                Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Gross Profit Margin (SELISE)",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Net Profit Margin (WEB)",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ],
                ),
              ],
            ),
            const ExpansionTile(
              title: Text(
                "Initial Sales Rate Total cost w/ Overheads",
              ),
            ),
            const ExpansionTile(
              title: Text(
                "Automatic Calc with % discount",
              ),
            ),
            const ExpansionTile(
              title: Text(
                "Automatic Calc- 10,000 Differences",
              ),
            ),
            const ExpansionTile(
              title: Text(
                "Manual Calculator(User Inputs)",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
