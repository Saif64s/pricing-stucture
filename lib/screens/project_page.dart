import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../consts/routes.dart';
import '../widgets/back_button.dart';
import '../widgets/project_details/tab_text.dart';
import 'tab_screens/breakdown.dart';
import 'tab_screens/cost_release.dart';
import 'tab_screens/day_estimates.dart';

class ProjectDetailsPage extends ConsumerStatefulWidget {
  const ProjectDetailsPage({super.key});

  @override
  ConsumerState<ProjectDetailsPage> createState() => _ProjectDetailsPageState();
}

class _ProjectDetailsPageState extends ConsumerState<ProjectDetailsPage> {
  int _currentIndex = 0;

  final _tabs = [
    DayEstimate(),
    const CostRelease(),
    const BreakDown(),
  ];

  @override
  Widget build(BuildContext context) {
    final index = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "$index",
          style: GoogleFonts.nunito(
            fontWeight: FontWeight.bold,
            letterSpacing: 8,
          ),
        ),
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15, top: 15),
          child: BackBtn(
            onTap: () => Navigator.pop(context),
          ),
        ),
        elevation: 0,
      ),

      body: _tabs[_currentIndex],

      // All the Sections found on spreadsheet
      bottomNavigationBar: CurvedNavigationBar(
        items: const [
          ProjText(text: "Day Estimates"),
          ProjText(text: "Cost Release"),
          ProjText(text: "🔐 Feature-wise Resource Breakdown"),
        ],
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        color: Colors.grey.shade400,
        buttonBackgroundColor: Theme.of(context).scaffoldBackgroundColor,
        height: 60,
        index: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),

      // Items of all the projects
      endDrawer: Drawer(
        width: 500,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 60,
                vertical: 10,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, PROJECT_DETAILS_PAGE,
                      arguments: index);
                },

                // TODO: might get change into card or custom design, fetch from dashboard
                child: Container(
                  height: 80,
                  width: double.infinity,
                  color: Colors.deepPurple,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
