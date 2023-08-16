import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pricing_structure/consts/routes.dart';
import 'package:pricing_structure/dummy/dummy.dart';
import 'package:pricing_structure/widgets/project_details/dashboard_text.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  void navigateToProfile() {
    Navigator.pushNamed(context, PROFILE_PAGE);
  }

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              toolbarHeight: 100,
              centerTitle: true,
              title: Text(
                "Your all projects in one place",
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              elevation: 10,
              actions: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: InkWell(
                    onTap: navigateToProfile,
                    child: const CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/iamges/profile_image_dummy.jpeg"),
                      maxRadius: 20,
                      minRadius: 10,
                    ),
                  ),
                ),
              ],
              automaticallyImplyLeading: false,
              floating: true,
              snap: true,
            )
          ];
        },
        body: ListView.builder(
          itemCount: projects.length,
          itemBuilder: (context, index) {
            var project = projects[index];
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 160,
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
