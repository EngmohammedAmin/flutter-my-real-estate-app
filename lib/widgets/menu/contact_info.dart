import 'package:flutter/material.dart';
import 'package:my_real_estate_app/constants.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildContactInfo(title: 'Adress', text: 'Station Street 5'),
        buildContactInfo(title: 'Country', text: 'Station Street 5'),
        buildContactInfo(title: 'Email', text: 'email@website.com'),
        buildContactInfo(title: 'Mobile', text: '00967770914610'),
        buildContactInfo(title: 'Website', text: 'my@Website.com'),
      ],
    );
  }

  Padding buildContactInfo({required String title, required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
          Text(text),
        ],
      ),
    );
  }
}
