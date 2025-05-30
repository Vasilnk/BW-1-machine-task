import 'package:bw1_machine_test/widgets/category_section.dart';
import 'package:bw1_machine_test/widgets/first_image_slider_section.dart';
import 'package:bw1_machine_test/widgets/location_section.dart';
import 'package:bw1_machine_test/widgets/search_section.dart';
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
                FirstImageSliderSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
