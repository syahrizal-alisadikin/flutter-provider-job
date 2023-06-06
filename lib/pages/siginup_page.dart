import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider_jobs/pages/signin_page.dart';
import 'package:provider_jobs/widgets/form.dart';
import 'package:provider_jobs/widgets/header.dart';

import '../widgets/theme.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
                title: "Sign Up",
                subtitle: "Register Search Job",
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/user_pic.png',
                        width: 120,
                        height: 120,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      CustomeFormField(
                        title: "Fullname",
                        hintText: "Masukan Fullname",
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      CustomeFormField(
                        controller: emailController,
                        title: "Email",
                        hintText: "Masukkan Email",
                        eye: false,
                        obscureText: false,
                        iconData: false,
                        isEmailValid: isEmailValid,
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
                      ),
                      SizedBox(
                        height: 12,
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
                        height: 12,
                      ),
                      CustomeFormField(
                        title: "Your Goal",
                        hintText: "Masukan Your Goal",
                      ),
                      SizedBox(height: 20),
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
                              "Sign Up",
                              style: buttonTextStyle,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
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
                                    builder: (context) => const SigninPage()),
                              );
                            },
                            child: Text(
                              "Sign In",
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
              )
            ],
          ),
        ));
  }
}
