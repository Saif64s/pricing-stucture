import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pricing_structure/widgets/back_button.dart';

import '../consts/routes.dart';

class ModuleDetailsPage extends StatefulWidget {
  const ModuleDetailsPage({super.key});

  @override
  State<ModuleDetailsPage> createState() => _ModuleDetailsPageState();
}

class _ModuleDetailsPageState extends State<ModuleDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final _indexOfProject = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          SliverAppBar(
            backgroundColor: Colors.grey.shade400,
            toolbarHeight: 100,
            centerTitle: true,
            title: Text(
              "Modules of the project $_indexOfProject",
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            elevation: 10,
            automaticallyImplyLeading: false,
            floating: true,
            snap: true,
            leading: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: BackBtn(
                onTap: () => Navigator.pop(context),
              ),
            ),
          )
        ];
      },
      body: GridView.builder(
        itemCount: 10,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, PROJECT_DETAILS_PAGE,
                  arguments: index);
            },
            child: const Card(
              color: Colors.blue,
            ),
          );
        },
      ),
    ));
  }
}
