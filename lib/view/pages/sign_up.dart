import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget tittle() {
      return Container(
        margin: EdgeInsets.only(
          top: 30 * textScaleFactorScreen(context),
        ),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackTextStyle.copyWith(
            fontSize: 24 * textScaleFactorScreen(context),
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget input({required String label, bool? secureInput}) {
        return Container(
          margin: EdgeInsets.only(
            bottom: 0.03 * maxHeightScreen(context),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label),
              SizedBox(
                height: 0.015 * maxHeightScreen(context),
              ),
              TextFormField(
                obscureText: secureInput ?? false,
                decoration: InputDecoration(
                  hintText: label,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultBorderRadius * textScaleFactorScreen(context),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }

      Widget submitButton({required VoidCallback function}) {
        return SizedBox(
          width: double.infinity,
          height: 55,
          child: TextButton(
            onPressed: function,
            style: TextButton.styleFrom(
                backgroundColor: kPrimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    defaultBorderRadius * textScaleFactorScreen(context),
                  ),
                )),
            child: Text(
              'Sign Up',
              style: whiteTextStyle.copyWith(
                fontSize: 18 * textScaleFactorScreen(context),
                fontWeight: medium,
              ),
            ),
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(
          top: 0.03 * maxHeightScreen(context),
        ),
        padding: EdgeInsets.symmetric(
          vertical: 0.03 * maxHeightScreen(context),
          horizontal: 0.05 * maxWidthScreen(context),
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(
            defaultBorderRadius * textScaleFactorScreen(context),
          ),
        ),
        child: Column(
          children: [
            input(label: 'Full Name'),
            input(label: 'Email'),
            input(
              label: 'Password',
              secureInput: true,
            ),
            input(
              label: 'Hobby',
            ),
            submitButton(function: () {
              Navigator.pushNamed(context, '/bonus');
            }),
          ],
        ),
      );
    }

    Widget termOfCondition() {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: 0.03 * maxHeightScreen(context),
        ),
        child: TextButton(
          onPressed: () {},
          child: Text(
            'Term Of Conditions',
            style: grayTextStyle.copyWith(
              fontSize: 16 * textScaleFactorScreen(context),
              fontWeight: light,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBgColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin * textScaleFactorScreen(context),
          ),
          physics: const BouncingScrollPhysics(),
          children: [
            tittle(),
            inputSection(),
            termOfCondition(),
          ],
        ),
      ),
    );
  }
}
