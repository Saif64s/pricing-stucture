import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pricing_structure/consts/routes.dart';
import 'package:pricing_structure/screens/dashboard.dart';

import 'package:pricing_structure/screens/profile_page.dart';
import 'package:pricing_structure/screens/project_page.dart';

import 'package:window_manager/window_manager.dart';

import 'screens/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  runApp(
    const ProviderScope(
      child: PricingStructureApp(),
    ),
  );
}

class PricingStructureApp extends StatelessWidget {
  const PricingStructureApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: const LoginPage(),
      routes: {
        DASHBOARD_PAGE: (context) => const DashBoard(),
        PROJECT_DETAILS_PAGE: (context) => const ProjectDetailsPage(),
        // COST_DETAILS_PAGE: (context) => CostDetailsPage(),
        PROFILE_PAGE: (context) => const ProfilePage(),
      },
    );
  }
}
