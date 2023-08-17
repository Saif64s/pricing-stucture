import 'package:flutter/material.dart';

class MarginWidget extends StatelessWidget {
  const MarginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
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
    );
  }
}
