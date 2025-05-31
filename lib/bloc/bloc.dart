import 'package:bw1_machine_test/bloc/event.dart';
import 'package:bw1_machine_test/bloc/state.dart';
import 'package:bw1_machine_test/services/api_services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationServices notificationServices;
  NotificationBloc(this.notificationServices) : super(InitialNotifications()) {
    on<FetchNotificationEvent>((event, emit) async {
      emit(LoadingNotifications());
      final notifications = await notificationServices.fetchData();
      emit(LoadededNotifications(notifications));
    });
  }
}
