import 'package:flutter/material.dart';
import '../shared/theme.dart';

Widget submitButton({required double textScaleFactor}) {
  return SizedBox(
    height: 55 * textScaleFactor,
    width: double.infinity,
    child: TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(defaultBorderRadius * textScaleFactor),
          )),
      child: Text(
        'Get Started',
        style: whiteTextStyle.copyWith(
          fontSize: 18 * textScaleFactor,
          fontWeight: medium,
        ),
      ),
    ),
  );
}
