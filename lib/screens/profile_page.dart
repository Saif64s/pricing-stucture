import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/back_button.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  void logUserOut() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: logUserOut,
            child: Text(
              "Logout",
              style: GoogleFonts.nunito(
                fontSize: 18,
              ),
            ),
          ),
        ],
        title: const Text("username "),
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15, top: 15),
          child: BackBtn(
            onTap: () => Navigator.pop(context),
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                maxRadius: 100,
                minRadius: 50,
              ),
              SizedBox(height: 25),
              Text("Email"),
              SizedBox(height: 10),
              Text("Phone no"),
              SizedBox(height: 10),
              Text("Password"),
            ],
          ),
        ),
      ),
    );
  }
}
