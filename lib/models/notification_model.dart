class NotificationModel {
  final String message;
  final List<NotificationData> data;
  final bool success;

  NotificationModel({
    required this.message,
    required this.data,
    required this.success,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
      message: json['message'],
      data: List<NotificationData>.from(
        json['data'].map((item) => NotificationData.fromJson(item)),
      ),
      success: json['success'],
    );
  }
}

class NotificationData {
  final String image;
  final String title;
  final String body;
  final String timestamp;

  NotificationData({
    required this.image,
    required this.title,
    required this.body,
    required this.timestamp,
  });

  factory NotificationData.fromJson(Map<String, dynamic> json) {
    return NotificationData(
      image: json['image'],
      title: json['title'],
      body: json['body'],
      timestamp: json['timestamp'],
    );
  }
}
