import 'dart:convert';

import 'package:bw1_machine_test/models/notification_model.dart';
import 'package:http/http.dart' as http;

class NotificationServices {
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
        return notificationData.data;
      } else {
        throw Exception('Server error: ${responce.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to load notifications: $e');
    }
  }
}
