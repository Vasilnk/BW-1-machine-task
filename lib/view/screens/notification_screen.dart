import 'package:bw1_machine_test/view/widgets/appbar.dart';
import 'package:bw1_machine_test/view/widgets/notification_tile.dart';
import 'package:bw1_machine_test/view_model/bloc/bloc.dart';
import 'package:bw1_machine_test/view_model/bloc/event.dart';
import 'package:bw1_machine_test/view_model/bloc/state.dart';
import 'package:bw1_machine_test/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<NotificationBloc>().add(FetchNotificationEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Notifications'),
      body: BlocBuilder<NotificationBloc, NotificationState>(
        builder: (context, state) {
          if (state is LoadingNotifications) {
            return Center(
              child: CircularProgressIndicator(color: primaryColor),
            );
          } else if (state is LoadededNotifications) {
            final notifications = state.notifications;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        final notification = notifications[index];

                        return NotificationTile(
                          index: index,
                          notification: notification,
                        );
                      },
                      separatorBuilder: (c, index) {
                        return Divider();
                      },
                      itemCount: notifications.length,
                    ),
                  ),
                ],
              ),
            );
          } else if (state is NotificationError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                backgroundColor: Colors.red,
              ),
            );
          } else {
            return Center(child: Text('No Notifications'));
          }
          return SizedBox.shrink();
        },
      ),
    );
  }
}
