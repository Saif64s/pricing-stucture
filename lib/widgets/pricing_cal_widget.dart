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
  String resourceValue = resourceList.first;
  String effortValue = effortList.last;

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
                      value: resourceValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          resourceValue = value!;
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
                      value: effortValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          effortValue = value!;
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
                      value: resourceValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          resourceValue = value!;
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
                      value: effortValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          effortValue = value!;
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
                      value: resourceValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          resourceValue = value!;
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
                      value: effortValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          effortValue = value!;
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
                      value: resourceValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          resourceValue = value!;
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
                      value: effortValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          effortValue = value!;
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
                      value: resourceValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          resourceValue = value!;
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
                      value: effortValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          effortValue = value!;
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
                      value: resourceValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          resourceValue = value!;
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
                      value: effortValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          effortValue = value!;
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
                      value: resourceValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          resourceValue = value!;
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
                      value: effortValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          effortValue = value!;
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
                      value: resourceValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          resourceValue = value!;
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
                      value: effortValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          effortValue = value!;
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
                      value: resourceValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          resourceValue = value!;
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
                      value: effortValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          effortValue = value!;
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
                      value: resourceValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          resourceValue = value!;
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
                      value: effortValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          effortValue = value!;
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
                      value: resourceValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          resourceValue = value!;
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
                      value: effortValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          effortValue = value!;
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
                      value: resourceValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          resourceValue = value!;
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
                      value: effortValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          effortValue = value!;
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
                      value: resourceValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          resourceValue = value!;
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
                      value: effortValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          effortValue = value!;
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
