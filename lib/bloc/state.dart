import 'package:bw1_machine_test/models/notification_model.dart';

class NotificationState {}

class InitialNotifications extends NotificationState {}

class LoadingNotifications extends NotificationState {}

class LoadededNotifications extends NotificationState {
  List<NotificationData> notifications = [];
  LoadededNotifications(this.notifications);
}
