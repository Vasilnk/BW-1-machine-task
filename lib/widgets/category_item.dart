import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(children: [Container(decoration: BoxDecoration()), Container()]),
        Text('name'),
      ],
    );
  }
}
