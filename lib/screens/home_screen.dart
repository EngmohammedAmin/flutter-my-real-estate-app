import 'package:flutter/material.dart';
import 'package:my_real_estate_app/constants.dart';
import 'package:my_real_estate_app/responsive.dart';
import 'package:my_real_estate_app/widgets/menu/side_menu_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.mainSection});
  final Widget mainSection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: kBgColor,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu),
                ),
              ),
            ),
      drawer: const SideMenuSection(),
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 1440),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (Responsive.isDesktop(context))
                  const Expanded(
                    flex: 2,
                    child: SideMenuSection(),
                  ),
                const SizedBox(
                  width: kDefaultPadding,
                ),
                Expanded(
                  flex: 7,
                  child: mainSection,
                ),
                const SizedBox(
                  width: kDefaultPadding,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
