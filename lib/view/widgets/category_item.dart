import 'package:bw1_machine_test/constants/colors.dart';
import 'package:bw1_machine_test/constants/images.dart';
import 'package:bw1_machine_test/constants/names.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final int index;
  const CategoryItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Stack(
              children: [
                Card(
                  color: Colors.white,
                  child: Container(
                    constraints: BoxConstraints(minWidth: 50, minHeight: 65),
                    padding: EdgeInsets.all(12),

                    child: Center(
                      child: SizedBox(
                        width: 40,
                        child: Image.asset(categoryImages[index]),
                      ),
                    ),
                  ),
                ),
                index < 3
                    ? Positioned(
                      left: 20,
                      top: 4,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 1,
                        ),
                        decoration: BoxDecoration(
                          color: offertagColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            '10%Off',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    )
                    : SizedBox.shrink(),
              ],
            ),
            Container(),
          ],
        ),
        Text(
          categoryNames[index].replaceFirst(' ', '\n'),
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
