import 'package:flutter/material.dart';

import '../../widgets/auto_cal_dif.dart';
import '../../widgets/auto_cal_discount.dart';
import '../../widgets/manual_cal_input_widget.dart';
import '../../widgets/margin_widget.dart';
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
                MarginWidget(),
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
              children: [AutoCalDiscount()],
            ),
            const ExpansionTile(
              title: Text(
                "Automatic Calc- 10,000 Differences",
              ),
              children: [
                AutoCalDif(),
              ],
            ),
            const ExpansionTile(
              title: Text(
                "Manual Calculator(User Inputs)",
              ),
              children: [ManualCalDiscount()],
            ),
          ],
        ),
      ),
    );
  }
}
