import 'package:flutter/material.dart';
import 'package:my_real_estate_app/constants.dart';
import '/models/recommendation.dart';
import 'recommendataion.dart';

class Recommendations extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Recommendations({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Client Recommendations',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                demoRecommendations.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: kDefaultPadding),
                  child: RecommendationCard(
                    recommendation: demoRecommendations[index],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
