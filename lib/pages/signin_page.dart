import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider_jobs/pages/siginup_page.dart';
import 'package:provider_jobs/widgets/form.dart';
import 'package:provider_jobs/widgets/header.dart';
import 'package:provider_jobs/widgets/theme.dart';
import 'package:email_validator/email_validator.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  bool isEmailValid = true;
  bool isSecure = true;
  TextEditingController emailController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            HeaderPage(
              title: "Sign In",
              subtitle: "Begin New Journey",
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Column(
                    children: [
                      Center(
                        child: Image.asset(
                          'assets/ilustration_sign.png',
                          height: 220,
                          width: 240,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email",
                        style: titleTextStyle,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        controller: emailController,
                        onChanged: (value) {
                          if (value.length > 5) {
                            bool isValid = EmailValidator.validate(value);
                            if (isValid) {
                              setState(() {
                                isEmailValid = true;
                              });
                            } else {
                              setState(() {
                                isEmailValid = false;
                              });
                            }
                          } else {
                            setState(() {
                              isEmailValid = true;
                            });
                          }
                        },
                        decoration: InputDecoration(
                          fillColor: Color(0xffF1F0F5),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: isEmailValid
                                  ? Color(0xff4141A4)
                                  : Color(0xffFD4F56),
                            ),
                          ),
                          hintText: "Masukan Email",
                        ),
                        style: TextStyle(
                          color: isEmailValid
                              ? Color(0xff4141A4)
                              : Color(0xffFD4F56),
                        ),
                      ),
                      !isEmailValid
                          ? SizedBox(
                              height: 2,
                            )
                          : SizedBox(),
                      !isEmailValid
                          ? Text(
                              "Email Tidak Valid",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Colors.red,
                              ),
                            )
                          : SizedBox()
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomeFormField(
                    title: "Password",
                    hintText: "Masukan Password",
                    eye: true,
                    obscureText: isSecure,
                    iconData: isSecure,
                    onPressed: () => {
                      setState(() {
                        isSecure = isSecure ? false : true;
                      }),
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Container(
                      width: 312,
                      height: 45,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xff4141A4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Sign In",
                          style: buttonTextStyle,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Container(
                      width: 312,
                      height: 45,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignupPage()),
                          );
                        },
                        child: Text(
                          "Create New Account",
                          style: GoogleFonts.poppins(
                            color: Color(0xff4141A44),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
