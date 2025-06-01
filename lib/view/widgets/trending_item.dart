import 'package:bw1_machine_test/constants/images.dart';
import 'package:flutter/material.dart';

class TrendingItem extends StatelessWidget {
  const TrendingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(image: AssetImage(trendingImage)),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mithas Bhandar',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            Text('Sweets, North Indian'),
            Text('(store location)  |  6.4 kms'),
            Row(
              spacing: 5,
              children: [Icon(Icons.star, size: 17), Text('4.1  |  45 mins')],
            ),
          ],
        ),
      ],
    );
  }
}
