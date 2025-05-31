import 'package:bw1_machine_test/core/constants/images.dart';
import 'package:bw1_machine_test/models/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class NotificationTile extends StatelessWidget {
  final int index;
  final NotificationData notification;
  const NotificationTile({
    super.key,
    required this.index,
    required this.notification,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 50,
          height: 50,
          child: Image.asset(
            notificationsImages[index % notificationsImages.length],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: Column(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notification.title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Text(
                  notification.body,
                  style: TextStyle(
                    fontSize: 13,
                    color: const Color.fromARGB(255, 155, 152, 152),
                  ),
                ),
                Text(
                  timeago.format(DateTime.parse(notification.timestamp)),
                  style: TextStyle(fontSize: 12, color: Colors.grey[350]),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
