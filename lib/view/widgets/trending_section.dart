import 'package:bw1_machine_test/view/widgets/trending_item.dart';
import 'package:flutter/material.dart';

class TrendingSection extends StatelessWidget {
  const TrendingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
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
        ],
      ),
    );
  }
}
