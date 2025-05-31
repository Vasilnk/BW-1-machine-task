import 'package:bw1_machine_test/core/constants/images.dart';
import 'package:flutter/material.dart';

class TrendingSection extends StatelessWidget {
  const TrendingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250, // height to show 2 items vertically
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Column(
            children: [TrendingItem(), SizedBox(height: 10), TrendingItem()],
          ),
          SizedBox(width: 10),
          Column(
            children: [TrendingItem(), SizedBox(height: 10), TrendingItem()],
          ),
          // Add more columns with 2 items each
        ],
      ),
    );
  }
}

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
