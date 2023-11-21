import 'package:airplane_flutter_project_bwa/shared/small_button.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      Widget userName() {
        return Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name',
                style: whiteTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: light,
                ),
              ),
              Text(
                'Kezia Anne',
                style: whiteTextStyle.copyWith(
                  fontSize: 20 * textScaleFactorScreen(context),
                  fontWeight: medium,
                ),
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        );
      }

      Widget logoPlane() {
        return Row(
          children: [
            Container(
              width: 24 * textScaleFactorScreen(context),
              height: 24 * textScaleFactorScreen(context),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icons/icon_plane.png',
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 6 * textScaleFactorScreen(context),
            ),
            Text(
              'Pay',
              style: whiteTextStyle.copyWith(
                fontSize: 16 * textScaleFactorScreen(context),
                fontWeight: medium,
              ),
            )
          ],
        );
      }

      Widget userBalance() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Balance',
              style: whiteTextStyle.copyWith(
                fontSize: 14,
                fontWeight: light,
              ),
            ),
            Text(
              'IDR 280.000.000',
              style: whiteTextStyle.copyWith(
                fontSize: 26,
                fontWeight: medium,
              ),
            ),
          ],
        );
      }

      return Container(
        width: 300 * textScaleFactorScreen(context),
        height: 200 * textScaleFactorScreen(context),
        margin: EdgeInsets.only(
          top: 80 * textScaleFactorScreen(context),
        ),
        padding: EdgeInsets.all(
          defaultMargin * textScaleFactorScreen(context),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            34 * textScaleFactorScreen(context),
          ),
          image: const DecorationImage(
            image: AssetImage(
              'assets/images/bg_card.png',
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                userName(),
                logoPlane(),
              ],
            ),
            userBalance(),
          ],
        ),
      );
    }

    Widget bonusTitle() {
      return Container(
        margin: const EdgeInsets.only(
          top: 90,
        ),
        child: Column(
          children: [
            Text(
              'Big Bonus 🎉',
              style: blackTextStyle.copyWith(
                fontSize: 32 * textScaleFactorScreen(context),
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 10 * textScaleFactorScreen(context),
            ),
            Text(
              'We give you early credit so that\nyou can buy a flight ticket',
              textAlign: TextAlign.center,
              style: blackTextStyle.copyWith(
                fontSize: 16 * textScaleFactorScreen(context),
                fontWeight: light,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
            bonusTitle(),
            smallButton(
              function: () {},
              label: 'Start Fly Now',
            ),
          ],
        ),
      ),
    );
  }
}
