import 'package:flutter/material.dart';
import 'package:my_real_estate_app/constants.dart';
import 'package:my_real_estate_app/screens/home_screen.dart';

import 'home_banner.dart';
import 'icon_info.dart';
import 'projects.dart';
import 'recommendations.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeScreen(
      mainSection: SingleChildScrollView(
        child: Column(
          children: [
            HomeBanner(),
            IconInfo(),
            Projects(),
            Recommendations(),
            SizedBox(
              height: kDefaultPadding,
            )
          ],
        ),
      ),
    );
  }
}
