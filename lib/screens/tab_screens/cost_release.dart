import 'package:flutter/material.dart';

import '../../widgets/no_of_widgets.dart';

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
            const ExpansionTile(
              title: Text(
                "No. of Dev Resources",
              ),
              children: [NoOfDevWidget()],
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
