import 'package:bw1_machine_test/constants/colors.dart';
import 'package:bw1_machine_test/widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'What would you like to do today?',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 150,
          child: GridView.builder(
            itemCount: 8,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            itemBuilder: (context, index) {
              return CategoryItem();
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('More', style: TextStyle(color: primaryColor)),
            Icon(Icons.keyboard_arrow_down_outlined, color: primaryColor),
          ],
        ),
      ],
    );
  }
}
