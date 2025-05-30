import 'dart:convert';

import 'package:bw1_machine_test/constants/colors.dart';
import 'package:bw1_machine_test/models/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  List<NotificationData> notifications = [];
  fetchData() async {
    try {
      final responce = await http.get(
        Uri.parse(
          'https://raw.githubusercontent.com/sayanp23/test-api/main/test-notifications.json',
        ),
      );
      if (responce.statusCode == 200) {
        final notificationData = NotificationModel.fromJson(
          jsonDecode(responce.body),
        );

        setState(() {
          notifications = notificationData.data;
        });
        print('data  count   is        ${notifications.length}');
        print('image       ${notifications[0].image}');
      } else {
        print('fetching data is error');
      }
    } catch (e) {
      print('Exeption: $e');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        leading: Icon(Icons.arrow_circle_left, color: primaryColor),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://raw.githubusercontent.com/sayanp23/test-api/main/order_delivered.png',
                    ),
                  ),
                  title: Text(notification.title),
                  subtitle: Column(children: [Text(notification.body)]),
                ),
                Row(children: [SizedBox(width: 70), Text('data')]),
              ],
            ),
          );
        },
        separatorBuilder: (c, index) {
          return Divider();
        },
        itemCount: notifications.length,
      ),
    );
  }
}
