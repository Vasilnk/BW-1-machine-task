import 'package:bw1_machine_test/bloc/bloc.dart';
import 'package:bw1_machine_test/bloc/event.dart';
import 'package:bw1_machine_test/bloc/state.dart';
import 'package:bw1_machine_test/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeago/timeago.dart' as timeago;

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
      appBar: AppBar(
        title: Text('Notifications'),
        leading: Icon(Icons.arrow_circle_left, color: primaryColor),
      ),
      body: BlocBuilder<NotificationBloc, NotificationState>(
        builder: (context, state) {
          if (state is LoadingNotifications) {
            return Center(
              child: CircularProgressIndicator(color: primaryColor),
            );
          } else if (state is LoadededNotifications) {
            final notifications = state.notifications;
            return ListView.separated(
              itemBuilder: (context, index) {
                final notification = notifications[index];

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: Column(
                        children: [
                          // CircleAvatar(
                          //   backgroundImage: NetworkImage(
                          //     'https://raw.githubusercontent.com/sayanp23/test-api/main/order_delivered.png',
                          //   ),
                          // ),
                        ],
                      ),
                      title: Text(
                        notification.title,
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                      ),
                      subtitle: Column(
                        children: [
                          Text(
                            notification.body,
                            style: TextStyle(
                              fontSize: 15,
                              color: const Color.fromARGB(255, 155, 152, 152),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 70),
                        Text(
                          timeago.format(
                            DateTime.parse(notification.timestamp),
                          ),
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[350],
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
              separatorBuilder: (c, index) {
                return Divider();
              },
              itemCount: notifications.length,
            );
          } else {
            return Center(child: Text('No Notifications in Server'));
          }
        },
      ),
    );
  }
}
