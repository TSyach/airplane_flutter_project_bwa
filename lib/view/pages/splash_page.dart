import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final widthScreen = maxWidthScreen(context);
    final heightScreen = maxHeightScreen(context);
    final textScaleFactor = textScaleFactorScreen(context);

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: widthScreen * 0.3,
              height: heightScreen * 0.15,
              margin: EdgeInsets.only(bottom: 50 * textScaleFactor),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icons/icon_plane.png'),
                ),
              ),
            ),
            Text(
              'AIRPLAN',
              style: whiteTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 32 * textScaleFactor,
                letterSpacing: 10 * textScaleFactor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
