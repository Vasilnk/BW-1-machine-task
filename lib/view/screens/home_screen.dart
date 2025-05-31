import 'package:bw1_machine_test/core/constants/images.dart';
import 'package:bw1_machine_test/view/widgets/bottum_button.dart';
import 'package:bw1_machine_test/view/widgets/category_section.dart';
import 'package:bw1_machine_test/view/widgets/image_slider_section.dart';
import 'package:bw1_machine_test/view/widgets/location_section.dart';
import 'package:bw1_machine_test/view/widgets/nearby_stores_section.dart';
import 'package:bw1_machine_test/view/widgets/search_section.dart';
import 'package:bw1_machine_test/view/widgets/trending_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              spacing: 15,
              children: [
                SizedBox(),

                LocationSection(),
                SearchSection(),
                CategorySection(),
                ImageSliderSection(
                  image: firstCarosalImage,
                  title: 'Top picks for you',
                ),
                TrendingSection(),
                ImageSliderSection(
                  image: secondCarosalImage,
                  title: 'Craze deals',
                ),
                Image.asset(referEarnImage),
                NearbyStoresSection(),
                BottumButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
