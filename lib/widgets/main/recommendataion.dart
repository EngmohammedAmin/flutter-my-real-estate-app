import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/recommendation.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    super.key,
    required this.recommendation,
  });

  final Recommendation recommendation;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      width: 400,
      color: kSecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(recommendation.image!),
            ),
            title: Text(recommendation.name!),
            subtitle: Text(recommendation.source!),
          ),
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          Text(
            recommendation.text!,
            maxLines: 4,
            style: const TextStyle(height: 1.5),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
