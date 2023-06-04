import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
        context,
        '/started_page',
        (route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4141A4),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset('assets/logo.png'),
              height: 76,
              width: 60,
            ),
            SizedBox(height: 50),
            Text(
              "Cari Job",
              style: GoogleFonts.poppins(
                  color: Color(0xffFFFFFF),
                  fontSize: 32,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
