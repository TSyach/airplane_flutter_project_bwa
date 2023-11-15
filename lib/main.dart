import 'package:airplane_flutter_project_bwa/view/pages/get_started_page.dart';
import 'package:flutter/material.dart';

import 'view/pages/splash_page.dart';

void main(List<String> args) {
  runApp(const AirPortMobile());
}

class AirPortMobile extends StatelessWidget {
  const AirPortMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => const SplashPage(),
        '/get-started':(context) => const GetStartedPage(),
      },
    );
  }
}
