import 'package:flutter/material.dart';
import '../shared/theme.dart';

Widget smallButton({
  required VoidCallback function,
  required String label,
}) {
  return Container(
    width: 220,
    height: 55,
    margin: const EdgeInsets.only(top: 50, bottom: 80),
    child: TextButton(
      onPressed: function,
      style: TextButton.styleFrom(
        backgroundColor: kPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(defaultBorderRadius),
        ),
      ),
      child: Text(
        label,
        style: whiteTextStyle.copyWith(
          fontSize: 18,
          fontWeight: medium,
        ),
      ),
    ),
  );
}
