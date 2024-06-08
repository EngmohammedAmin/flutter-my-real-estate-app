import 'package:flutter/material.dart';
import 'package:my_real_estate_app/constants.dart';
import 'package:my_real_estate_app/responsive.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding * 3),
      child: Responsive.isMobile(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: buildIconInfo(
                          context: context,
                          icon: Icons.supervisor_account,
                          text: '967+',
                          label: 'Clients'),
                    ),
                    Expanded(
                      child: buildIconInfo(
                          context: context,
                          icon: Icons.location_on,
                          text: '139+',
                          label: 'Projects'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: kDefaultPadding * 3,
                ),
                Row(
                  children: [
                    Expanded(
                      child: buildIconInfo(
                          context: context,
                          icon: Icons.public,
                          text: '30+',
                          label: 'Countries'),
                    ),
                    Expanded(
                      child: buildIconInfo(
                        context: context,
                        icon: Icons.star,
                        text: '13k+',
                        label: 'Stars',
                      ),
                    ),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildIconInfo(
                    context: context,
                    icon: Icons.supervisor_account,
                    text: '967+',
                    label: 'Clients'),
                buildIconInfo(
                    context: context,
                    icon: Icons.location_on,
                    text: '139+',
                    label: 'Projects'),
                buildIconInfo(
                    context: context,
                    icon: Icons.public,
                    text: '30+',
                    label: 'Countries'),
                buildIconInfo(
                    context: context,
                    icon: Icons.star,
                    text: '13k+',
                    label: 'Stars'),
              ],
            ),
    );
  }

  Column buildIconInfo(
      {required BuildContext context,
      required IconData icon,
      required String text,
      required String label}) {
    return Column(
      children: [
        Icon(icon, size: 50),
        const SizedBox(
          height: kDefaultPadding / 2,
        ),
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontSize: 30, color: kPrimaryColor),
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }
}
