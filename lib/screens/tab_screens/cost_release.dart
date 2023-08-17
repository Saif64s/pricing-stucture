import 'package:flutter/material.dart';

class CostRelease extends StatelessWidget {
  const CostRelease({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionTile(
          title: Text(
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
        ),
        ExpansionTile(
          title: Text(
            "Margins",
          ),
        ),
        ExpansionTile(
          title: Text(
            "Initial Sales Rate Total cost w/ Overheads",
          ),
        ),
        ExpansionTile(
          title: Text(
            "Automatic Calc with % discount",
          ),
        ),
        ExpansionTile(
          title: Text(
            "Automatic Calc- 10,000 Differences",
          ),
        ),
        ExpansionTile(
          title: Text(
            "Manual Calculator(User Inputs)",
          ),
        ),
      ],
    );
  }
}
