import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  Widget tittle(double textScaleFactor) {
    return Container(
      margin: EdgeInsets.only(
          left: defaultMargin * textScaleFactor,
          top: 30 * textScaleFactor,
          bottom: 30 * textScaleFactor),
      child: Text(
        'Join us and get\nyour next journey',
        style: blackTextStyle.copyWith(
          fontSize: 24 * textScaleFactor,
          fontWeight: semiBold,
        ),
      ),
    );
  }

  Widget inputSection(double textScaleFactor) {
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
              ),
            ),
          ),
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

    Widget submitButton({required double textScaleFactor}) {
      return SizedBox(
        height: 55 * textScaleFactor,
        width: double.infinity,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    defaultBorderRadius * textScaleFactor),
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

    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultMargin * textScaleFactor),
      padding: EdgeInsets.symmetric(
          horizontal: 20 * textScaleFactor, vertical: 30 * textScaleFactor),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius:
            BorderRadius.circular(defaultBorderRadius * textScaleFactor),
      ),
      child: Column(
        children: [
          input(
            label: "Full Name",
            textScaleFactor: textScaleFactor,
          ),
          input(
            label: "Email Address",
            textScaleFactor: textScaleFactor,
          ),
          input(
            label: 'Password',
            secureText: true,
            textScaleFactor: textScaleFactor,
          ),
          input(
            label: "Hobby",
            textScaleFactor: textScaleFactor,
          ),
          submitButton(
            textScaleFactor: textScaleFactor,
          ),
        ],
      ),
    );
  }

  Widget tacButton(double textScaleFactor) {
    return Container(
      margin: EdgeInsets.only(
        top: 50 * textScaleFactor,
        left: 100 * textScaleFactor,
        right: 100 * textScaleFactor,
        bottom: 73 * textScaleFactor,
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          'Term and Condition',
          style: grayTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
              decoration: TextDecoration.underline),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textScaleFactor = textScaleFactorScreen(context);
    return Scaffold(
      backgroundColor: kBgColor,
      body: SafeArea(
        child: ListView(
          children: [
            tittle(textScaleFactor),
            inputSection(textScaleFactor),
            tacButton(textScaleFactor),
          ],
        ),
      ),
    );
  }
}
