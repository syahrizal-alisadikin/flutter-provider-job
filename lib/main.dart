import 'package:flutter/material.dart';
import 'package:provider_jobs/pages/splash_page.dart';
import 'package:provider_jobs/pages/started_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       routes: {
        '/': (context) => const SplashPage(),
        '/started_page': (context) => const StartedPage(),
       }
    );
  }
}
