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
      ],
    );
  }
}
