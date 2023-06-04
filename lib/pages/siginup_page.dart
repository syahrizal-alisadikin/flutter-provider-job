import 'package:flutter/material.dart';
import 'package:provider_jobs/widgets/header.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: ListView(
            children: [
              HeaderPage(title: "Sign Up", subtitle: "Register Search Job")
            ],
          ),
        ));
  }
}
