import 'package:bw1_machine_test/constants/colors.dart';
import 'package:bw1_machine_test/constants/images.dart';
import 'package:bw1_machine_test/screens/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            spacing: 8,
            children: [
              Text(
                'Search for products/stores',
                style: GoogleFonts.roboto(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Icon(Icons.search, color: primaryColor),
            ],
          ),
        ),
        Stack(
          children: [
            IconButton(
              icon: Icon(Icons.notifications_none_outlined, size: 30),
              color: Colors.red,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (c) => NotificationsScreen()),
                );
              },
            ),
            Positioned(
              left: 23,
              top: 12,
              child: Container(
                padding: EdgeInsets.only(right: 4, left: 4, bottom: 1.5),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  '2',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        Image.asset(tagImage, width: 23),
      ],
    );
  }
}
