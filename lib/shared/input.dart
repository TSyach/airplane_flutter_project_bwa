import 'package:flutter/material.dart';
import '../shared/theme.dart';

Widget input({
  required String label,
  bool? secureText,
  required double textScaleFactor,
}) {
  Widget labelSection() {
    return Text(
      label,
      style: blackTextStyle.copyWith(fontSize: 14 * textScaleFactor),
    );
  }

  Widget inputSection() {
    return TextFormField(
      cursorColor: kBlackColor,
      obscureText: secureText ?? false,
      decoration: InputDecoration(
          hintText: label,
          border: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(defaultBorderRadius * textScaleFactor),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius:
                  BorderRadius.circular(defaultBorderRadius * textScaleFactor),
              borderSide: BorderSide(
                color: kPrimaryColor,
              ))),
    );
  }

  return Container(
    margin: EdgeInsets.only(bottom: 20 * textScaleFactor),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        labelSection(),
        SizedBox(
          height: 6 * textScaleFactor,
        ),
        inputSection(),
      ],
    ),
  );
}
