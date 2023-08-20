import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pricing_structure/consts/cost_grid_names.dart';

class PricingCalc extends StatefulWidget {
  const PricingCalc({
    super.key,
  });

  @override
  State<PricingCalc> createState() => _PricingCalcState();
}

class _PricingCalcState extends State<PricingCalc> {
  String resourceValueBE1 = resourceList.first;
  String resourceValueBE2 = resourceList.first;
  String resourceValueBE3 = resourceList.first;
  String resourceValueFE1 = resourceList.first;
  String resourceValueFE2 = resourceList.first;
  String resourceValueFE3 = resourceList.first;
  String resourceValueFS1 = resourceList.first;
  String resourceValueFS2 = resourceList.first;
  String resourceValueBA1 = resourceList.first;
  String resourceValueBA2 = resourceList.first;
  String resourceValueQA = resourceList.first;
  String resourceValueUX = resourceList.first;
  String resourceValueMoch = resourceList.first;

  String effortValueBE1 = effortList.first;
  String effortValueBE2 = effortList.first;
  String effortValueBE3 = effortList.first;
  String effortValueFE1 = effortList.first;
  String effortValueFE2 = effortList.first;
  String effortValueFE3 = effortList.first;
  String effortValueFS1 = effortList.first;
  String effortValueFS2 = effortList.first;
  String effortValueBA1 = effortList.first;
  String effortValueBA2 = effortList.first;
  String effortValueQA = effortList.first;
  String effortValueUX = effortList.first;
  String effortValueMoch = effortList.first;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
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
            border: TableBorder.all(),
            columns: const [
              DataColumn(label: Text("Role")),
              DataColumn(label: Text("Resource")),
              DataColumn(label: Text("External Sales Rate")),
              DataColumn(label: Text("No. of Days")),
              DataColumn(label: Text("Level of effort")),
              DataColumn(label: Text("Total price")),
            ],
            rows: [
              DataRow(
                cells: [
                  const DataCell(
                    Text(
                      "BE1",
                    ),
                  ),
                  DataCell(
                    DropdownButton<String>(
                      value: resourceValueBE1,
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Colors.green,
                      ),
                      elevation: 16,
                      style: const TextStyle(
                        color: Colors.green,
                      ),
                      underline: Container(
                        height: 2,
                        color: Colors.green,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          resourceValueBE1 = value!;
                        });
                      },
                      items: resourceList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const DataCell(
                    Text(
                      "100",
                    ),
                  ),
                  const DataCell(
                    Text(
                      "4",
                    ),
                  ),
                  DataCell(
                    DropdownButton<String>(
                      value: effortValueBE1,
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Colors.green,
                      ),
                      elevation: 16,
                      style: const TextStyle(
                        color: Colors.green,
                      ),
                      underline: Container(
                        height: 2,
                        color: Colors.green,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          effortValueBE1 = value!;
                        });
                      },
                      items: effortList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const DataCell(
                    Text(
                      "4",
                    ),
                  ),
                ],
              ),

              // 2nd row
              DataRow(
                cells: [
                  const DataCell(
                    Text(
                      "BE2",
                    ),
                  ),
                  DataCell(
                    DropdownButton<String>(
                      value: resourceValueBE2,
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Colors.green,
                      ),
                      elevation: 16,
                      style: const TextStyle(
                        color: Colors.green,
                      ),
                      underline: Container(
                        height: 2,
                        color: Colors.green,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          resourceValueBE2 = value!;
                        });
                      },
                      items: resourceList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const DataCell(
                    Text(
                      "100",
                    ),
                  ),
                  const DataCell(
                    Text(
                      "4",
                    ),
                  ),
                  DataCell(
                    DropdownButton<String>(
                      value: effortValueBE2,
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Colors.green,
                      ),
                      elevation: 16,
                      style: const TextStyle(
                        color: Colors.green,
                      ),
                      underline: Container(
                        height: 2,
                        color: Colors.green,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          effortValueBE2 = value!;
                        });
                      },
                      items: effortList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const DataCell(
                    Text(
                      "4",
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  const DataCell(
                    Text(
                      "BE3",
                    ),
                  ),
                  DataCell(
                    DropdownButton<String>(
                      value: resourceValueBE3,
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Colors.green,
                      ),
                      elevation: 16,
                      style: const TextStyle(
                        color: Colors.green,
                      ),
                      underline: Container(
                        height: 2,
                        color: Colors.green,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          resourceValueBE3 = value!;
                        });
                      },
                      items: resourceList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const DataCell(
                    Text(
                      "100",
                    ),
                  ),
                  const DataCell(
                    Text(
                      "4",
                    ),
                  ),
                  DataCell(
                    DropdownButton<String>(
                      value: effortValueBE3,
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Colors.green,
                      ),
                      elevation: 16,
                      style: const TextStyle(
                        color: Colors.green,
                      ),
                      underline: Container(
                        height: 2,
                        color: Colors.green,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          effortValueBE3 = value!;
                        });
                      },
                      items: effortList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const DataCell(
                    Text(
                      "4",
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  const DataCell(
                    Text(
                      "FE1",
                    ),
                  ),
                  DataCell(
                    DropdownButton<String>(
                      value: resourceValueFE1,
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Colors.green,
                      ),
                      elevation: 16,
                      style: const TextStyle(
                        color: Colors.green,
                      ),
                      underline: Container(
                        height: 2,
                        color: Colors.green,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          resourceValueFE1 = value!;
                        });
                      },
                      items: resourceList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const DataCell(
                    Text(
                      "100",
                    ),
                  ),
                  const DataCell(
                    Text(
                      "4",
                    ),
                  ),
                  DataCell(
                    DropdownButton<String>(
                      value: effortValueFE1,
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Colors.green,
                      ),
                      elevation: 16,
                      style: const TextStyle(
                        color: Colors.green,
                      ),
                      underline: Container(
                        height: 2,
                        color: Colors.green,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          effortValueFE1 = value!;
                        });
                      },
                      items: effortList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const DataCell(
                    Text(
                      "4",
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  const DataCell(
                    Text(
                      "FE2",
                    ),
                  ),
                  DataCell(
                    DropdownButton<String>(
                      value: resourceValueFE2,
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Colors.green,
                      ),
                      elevation: 16,
                      style: const TextStyle(
                        color: Colors.green,
                      ),
                      underline: Container(
                        height: 2,
                        color: Colors.green,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          resourceValueFE2 = value!;
                        });
                      },
                      items: resourceList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const DataCell(
                    Text(
                      "100",
                    ),
                  ),
                  const DataCell(
                    Text(
                      "4",
                    ),
                  ),
                  DataCell(
                    DropdownButton<String>(
                      value: effortValueFE2,
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Colors.green,
                      ),
                      elevation: 16,
                      style: const TextStyle(
                        color: Colors.green,
                      ),
                      underline: Container(
                        height: 2,
                        color: Colors.green,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          effortValueFE2 = value!;
                        });
                      },
                      items: effortList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const DataCell(
                    Text(
                      "4",
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  const DataCell(
                    Text(
                      "FE3",
                    ),
                  ),
                  DataCell(
                    DropdownButton<String>(
                      value: resourceValueFE3,
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Colors.green,
                      ),
                      elevation: 16,
                      style: const TextStyle(
                        color: Colors.green,
                      ),
                      underline: Container(
                        height: 2,
                        color: Colors.green,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          resourceValueFE3 = value!;
                        });
                      },
                      items: resourceList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const DataCell(
                    Text(
                      "100",
                    ),
                  ),
                  const DataCell(
                    Text(
                      "4",
                    ),
                  ),
                  DataCell(
                    DropdownButton<String>(
                      value: effortValueFE3,
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Colors.green,
                      ),
                      elevation: 16,
                      style: const TextStyle(
                        color: Colors.green,
                      ),
                      underline: Container(
                        height: 2,
                        color: Colors.green,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          effortValueFE3 = value!;
                        });
                      },
                      items: effortList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const DataCell(
                    Text(
                      "4",
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  const DataCell(
                    Text(
                      "FS1",
                    ),
                  ),
                  DataCell(
                    DropdownButton<String>(
                      value: resourceValueFS1,
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Colors.green,
                      ),
                      elevation: 16,
                      style: const TextStyle(
                        color: Colors.green,
                      ),
                      underline: Container(
                        height: 2,
                        color: Colors.green,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          resourceValueFS1 = value!;
                        });
                      },
                      items: resourceList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const DataCell(
                    Text(
                      "100",
                    ),
                  ),
                  const DataCell(
                    Text(
                      "4",
                    ),
                  ),
                  DataCell(
                    DropdownButton<String>(
                      value: effortValueFS1,
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Colors.green,
                      ),
                      elevation: 16,
                      style: const TextStyle(
                        color: Colors.green,
                      ),
                      underline: Container(
                        height: 2,
                        color: Colors.green,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          effortValueFS1 = value!;
                        });
                      },
                      items: effortList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const DataCell(
                    Text(
                      "4",
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  const DataCell(
                    Text(
                      "FS2",
                    ),
                  ),
                  DataCell(
                    DropdownButton<String>(
                      value: resourceValueFS2,
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Colors.green,
                      ),
                      elevation: 16,
                      style: const TextStyle(
                        color: Colors.green,
                      ),
                      underline: Container(
                        height: 2,
                        color: Colors.green,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          resourceValueFS2 = value!;
                        });
                      },
                      items: resourceList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const DataCell(
                    Text(
                      "100",
                    ),
                  ),
                  const DataCell(
                    Text(
                      "4",
                    ),
                  ),
                  DataCell(
                    DropdownButton<String>(
                      value: effortValueFS2,
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Colors.green,
                      ),
                      elevation: 16,
                      style: const TextStyle(
                        color: Colors.green,
                      ),
                      underline: Container(
                        height: 2,
                        color: Colors.green,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          effortValueFS2 = value!;
                        });
                      },
                      items: effortList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const DataCell(
                    Text(
                      "4",
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  const DataCell(
                    Text(
                      "PDM/BA1",
                    ),
                  ),
                  DataCell(
                    DropdownButton<String>(
                      value: resourceValueBA1,
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Colors.green,
                      ),
                      elevation: 16,
                      style: const TextStyle(
                        color: Colors.green,
                      ),
                      underline: Container(
                        height: 2,
                        color: Colors.green,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          resourceValueBA1 = value!;
                        });
                      },
                      items: resourceList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const DataCell(
                    Text(
                      "100",
                    ),
                  ),
                  const DataCell(
                    Text(
                      "4",
                    ),
                  ),
                  DataCell(
                    DropdownButton<String>(
                      value: effortValueBA1,
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Colors.green,
                      ),
                      elevation: 16,
                      style: const TextStyle(
                        color: Colors.green,
                      ),
                      underline: Container(
                        height: 2,
                        color: Colors.green,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          effortValueBA1 = value!;
                        });
                      },
                      items: effortList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const DataCell(
                    Text(
                      "4",
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  const DataCell(
                    Text(
                      "PDM/BA2",
                    ),
                  ),
                  DataCell(
                    DropdownButton<String>(
                      value: resourceValueBA2,
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Colors.green,
                      ),
                      elevation: 16,
                      style: const TextStyle(
                        color: Colors.green,
                      ),
                      underline: Container(
                        height: 2,
                        color: Colors.green,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          resourceValueBA2 = value!;
                        });
                      },
                      items: resourceList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const DataCell(
                    Text(
                      "100",
                    ),
                  ),
                  const DataCell(
                    Text(
                      "4",
                    ),
                  ),
                  DataCell(
                    DropdownButton<String>(
                      value: effortValueBA2,
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Colors.green,
                      ),
                      elevation: 16,
                      style: const TextStyle(
                        color: Colors.green,
                      ),
                      underline: Container(
                        height: 2,
                        color: Colors.green,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          effortValueBA2 = value!;
                        });
                      },
                      items: effortList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const DataCell(
                    Text(
                      "4",
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  const DataCell(
                    Text(
                      "QA",
                    ),
                  ),
                  DataCell(
                    DropdownButton<String>(
                      value: resourceValueQA,
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Colors.green,
                      ),
                      elevation: 16,
                      style: const TextStyle(
                        color: Colors.green,
                      ),
                      underline: Container(
                        height: 2,
                        color: Colors.green,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          resourceValueQA = value!;
                        });
                      },
                      items: resourceList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const DataCell(
                    Text(
                      "100",
                    ),
                  ),
                  const DataCell(
                    Text(
                      "4",
                    ),
                  ),
                  DataCell(
                    DropdownButton<String>(
                      value: effortValueQA,
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Colors.green,
                      ),
                      elevation: 16,
                      style: const TextStyle(
                        color: Colors.green,
                      ),
                      underline: Container(
                        height: 2,
                        color: Colors.green,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          effortValueQA = value!;
                        });
                      },
                      items: effortList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const DataCell(
                    Text(
                      "4",
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  const DataCell(
                    Text(
                      "UX",
                    ),
                  ),
                  DataCell(
                    DropdownButton<String>(
                      value: resourceValueUX,
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Colors.green,
                      ),
                      elevation: 16,
                      style: const TextStyle(
                        color: Colors.green,
                      ),
                      underline: Container(
                        height: 2,
                        color: Colors.green,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          resourceValueUX = value!;
                        });
                      },
                      items: resourceList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const DataCell(
                    Text(
                      "100",
                    ),
                  ),
                  const DataCell(
                    Text(
                      "4",
                    ),
                  ),
                  DataCell(
                    DropdownButton<String>(
                      value: effortValueUX,
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Colors.green,
                      ),
                      elevation: 16,
                      style: const TextStyle(
                        color: Colors.green,
                      ),
                      underline: Container(
                        height: 2,
                        color: Colors.green,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          effortValueUX = value!;
                        });
                      },
                      items: effortList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const DataCell(
                    Text(
                      "4",
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  const DataCell(
                    Text(
                      "MOCH Comission",
                    ),
                  ),
                  DataCell(
                    DropdownButton<String>(
                      value: resourceValueMoch,
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Colors.green,
                      ),
                      elevation: 16,
                      style: const TextStyle(
                        color: Colors.green,
                      ),
                      underline: Container(
                        height: 2,
                        color: Colors.green,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          resourceValueMoch = value!;
                        });
                      },
                      items: resourceList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const DataCell(
                    Text(
                      "100",
                    ),
                  ),
                  const DataCell(
                    Text(
                      "4",
                    ),
                  ),
                  DataCell(
                    DropdownButton<String>(
                      value: effortValueMoch,
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Colors.green,
                      ),
                      elevation: 16,
                      style: const TextStyle(
                        color: Colors.green,
                      ),
                      underline: Container(
                        height: 2,
                        color: Colors.green,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          effortValueMoch = value!;
                        });
                      },
                      items: effortList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const DataCell(
                    Text(
                      "4",
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 250),
                child: Text(
                  "Total Price: CHF4500",
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
