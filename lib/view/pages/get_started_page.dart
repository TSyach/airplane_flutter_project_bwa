import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final widthScreen = maxWidthScreen(context);
    final heightScreen = maxHeightScreen(context);
    final textScaleFactor = textScaleFactorScreen(context);
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg_getstarted.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Fly Like a Bird',
                style: whiteTextStyle.copyWith(
                  fontSize: 32 * textScaleFactor,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                height: widthScreen * 0.04,
              ),
              Text(
                'Explore new world with us and let\nyourself get an amazing experiences',
                style: whiteTextStyle.copyWith(
                  fontSize: 16 * textScaleFactor,
                  fontWeight: light,
                  height: heightScreen * 0.002,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                width: widthScreen * 0.5,
                height: heightScreen * 0.07,
                margin: EdgeInsets.only(
                    top: 50 * textScaleFactor, bottom: 80 * textScaleFactor),
                child: TextButton(
                  onPressed: () => {Navigator.pushNamed(context, '/sign-up')},
                  style: TextButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          defaultBorderRadius * textScaleFactor),
                    ),
                  ),
                  child: Text(
                    'Get Started',
                    style: whiteTextStyle.copyWith(
                      fontSize: 18 * textScaleFactor,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
