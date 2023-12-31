import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Default Value
const defaultMargin = 24.0;
const defaultBorderRadius = 17.0;

// Responsive
double maxWidthScreen(BuildContext context) =>
    MediaQuery.of(context).size.width;

double maxHeightScreen(BuildContext context) =>
    MediaQuery.of(context).size.height;

double textScaleFactorScreen(BuildContext context) =>
    MediaQuery.of(context).textScaleFactor;

// Warna
Color kPrimaryColor = const Color(0xFF5C40CC);
Color kBlackColor = const Color(0xFF1F1449);
Color kWhiteColor = const Color(0xFFFFFFFF);
Color kGrayColor = const Color(0xFF9698A9);
Color kGreenColor = const Color(0xFF0EC3AE);
Color kRedColor = const Color(0xFFEB70A5);
Color kBgColor = const Color(0xFFFAFAFA);
Color kInactiveColor = const Color(0xFFDBD7EC);

// Font Style
TextStyle purpleTextStyle = GoogleFonts.poppins(
  color: kPrimaryColor,
);

TextStyle blackTextStyle = GoogleFonts.poppins(
  color: kBlackColor,
);

TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: kWhiteColor,
);

TextStyle grayTextStyle = GoogleFonts.poppins(
  color: kGrayColor,
);

TextStyle greenTextStyle = GoogleFonts.poppins(
  color: kGreenColor,
);

TextStyle redTextStyle = GoogleFonts.poppins(
  color: kRedColor,
);

// Font Weight
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
