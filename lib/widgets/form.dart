import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider_jobs/widgets/theme.dart';

class CustomeFormField extends StatelessWidget {
  final String? hintText;
  final String title;
  final bool? obscureText;
  final bool? eye;
  final bool isEmailValid;
  final bool iconData;
  final TextEditingController? controller;

  final VoidCallback? onPressed;
  final ValueChanged<String>? onChanged;
  const CustomeFormField({
    Key? key,
    this.hintText,
    required this.title,
    this.obscureText = false,
    this.eye = false,
    this.isEmailValid = true,
    this.controller,
    this.onPressed,
    this.onChanged,
    this.iconData = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: titleTextStyle,
        ),
        SizedBox(
          height: 8,
        ),
        TextFormField(
          obscureText: obscureText!,
          onChanged: onChanged,
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
                color: isEmailValid ? Color(0xff4141A4) : Color(0xffFD4F56),
              ),
            ),
            hintText: hintText,
            isDense: true,
            contentPadding: const EdgeInsets.all(16),
            suffixIcon: eye!
                ? IconButton(
                    onPressed: onPressed,
                    icon: iconData
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                  )
                : null,
          ),
          style: TextStyle(
            color: isEmailValid ? Color(0xff4141A4) : Color(0xffFD4F56),
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
    );
  }
}
