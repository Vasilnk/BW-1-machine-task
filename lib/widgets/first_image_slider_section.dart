import 'package:bw1_machine_test/constants/images.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FirstImageSliderSection extends StatelessWidget {
  const FirstImageSliderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Top picks for you',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        CarouselSlider.builder(
          itemCount: 2,
          itemBuilder: (context, index, ind) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(firstCarosalImage),
                  fit: BoxFit.fill,
                ),
              ),
            );
          },
          options: CarouselOptions(
            height: 200,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            scrollDirection: Axis.horizontal,
            initialPage: 0,
            viewportFraction: 1.0,
          ),
        ),
      ],
    );
  }
}
