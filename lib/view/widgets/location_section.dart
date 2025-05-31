import 'package:bw1_machine_test/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationSection extends StatelessWidget {
  const LocationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        Icon(Icons.location_on_rounded, color: primaryColor),
        Text(
          'ABCD,New Delhi',
          style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Icon(Icons.keyboard_arrow_down, color: primaryColor),
      ],
    );
  }
}
