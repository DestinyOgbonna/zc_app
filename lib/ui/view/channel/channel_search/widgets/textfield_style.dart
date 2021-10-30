import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
<<<<<<< HEAD
import 'package:zurichat/ui/shared/colors.dart';
=======
import 'package:zurichat/utilities/constants/colors.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6

InputDecoration textFormFields(String hintText) {
  return InputDecoration(
      hintText: hintText,
      hintStyle: GoogleFonts.lato(
          fontSize: 14,
          color: const Color(
            0xFFA1A9B3,
          )),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF7B8794)),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF7B8794)),
      ));
}

TextStyle headerStyle() {
  return GoogleFonts.lato(
      fontSize: 20, fontWeight: FontWeight.w800, color: Colors.black);
}

TextStyle nameStyle() {
  return GoogleFonts.lato(
      fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.blackColor);
}

TextStyle greenTextStyle() {
  return GoogleFonts.lato(
    fontSize: 16,
    fontWeight: FontWeight.w800,
    color: AppColors.zuriPrimaryColor,
  );
}
