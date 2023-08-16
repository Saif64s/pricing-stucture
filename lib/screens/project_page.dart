import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pricing_structure/dummy/dummy.dart';

import '../consts/routes.dart';
import '../widgets/back_button.dart';
import '../widgets/project_details/dashboard_text.dart';
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
        width: 700,
        child: ListView.builder(
          itemCount: projects.length,
          itemBuilder: (context, index) {
            var project = projects[index];
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 50,
                vertical: 10,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, PROJECT_DETAILS_PAGE,
                      arguments: project['project_name']);
                },

                // TODO: might get change into card or custom design. Fetch from the dashboard page
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.grey.shade700, Colors.grey.shade300],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DashBoardText(
                              title: "Project name: ",
                              itemText: "${project["project_name"]}",
                            ),
                            DashBoardText(
                              title: "Handled by: ",
                              itemText: "${project["handled_by"]}",
                            ),
                            DashBoardText(
                              title: "Working Devs: ",
                              itemText: "${project['working_devs']}",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
