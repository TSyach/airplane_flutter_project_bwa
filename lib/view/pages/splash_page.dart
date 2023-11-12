import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.only(bottom: 50),
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
                fontSize: 32,
                letterSpacing: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
