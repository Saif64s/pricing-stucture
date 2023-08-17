import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/auto_cal_dif.dart';
import '../../widgets/auto_cal_discount.dart';
import '../../widgets/manual_cal_input_widget.dart';
import '../../widgets/margin_widget.dart';
import '../../widgets/no_of_widgets.dart';
import '../../widgets/pricing_cal_widget.dart';

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
              title: Text(
                "Pricing Calc",
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              children: const [PricingCalc()],
            ),
            const Divider(thickness: 2),
            ExpansionTile(
              title: Text(
                "No. of Dev Resources",
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              children: const [NoOfDevWidget()],
            ),
            const Divider(thickness: 2),
            ExpansionTile(
              childrenPadding: const EdgeInsets.all(16),
              title: Text(
                "Margins",
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              children: const [
                MarginWidget(),
              ],
            ),
            const Divider(thickness: 2),
            ExpansionTile(
              title: Text(
                "Initial Sales Rate Total cost w/ Overheads",
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const Divider(thickness: 2),
            ExpansionTile(
              title: Text(
                "Automatic Calc with % discount",
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              children: const [AutoCalDiscount()],
            ),
            const Divider(thickness: 2),
            ExpansionTile(
              title: Text(
                "Automatic Calc- 10,000 Differences",
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              children: const [
                AutoCalDif(),
              ],
            ),
            const Divider(thickness: 2),
            ExpansionTile(
              title: Text(
                "Manual Calculator(User Inputs)",
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              children: const [ManualCalDiscount()],
            ),
          ],
        ),
      ),
    );
  }
}
