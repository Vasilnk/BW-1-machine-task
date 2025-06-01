import 'package:bw1_machine_test/view_model/bloc/event.dart';
import 'package:bw1_machine_test/view_model/bloc/state.dart';
import 'package:bw1_machine_test/view_model/services/api_services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationServices notificationServices;
  NotificationBloc(this.notificationServices) : super(InitialNotifications()) {
    on<FetchNotificationEvent>((event, emit) async {
      emit(LoadingNotifications());
      try {
        final notifications = await notificationServices.fetchData();
        if (notifications != null) {
          emit(LoadededNotifications(notifications));
        } else {
          emit(NotificationError("No notifications available"));
        }
      } catch (e) {
        emit(NotificationError("Error fetching notifications: $e"));
      }
    });
  }
}
