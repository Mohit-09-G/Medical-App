import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationServices {
  final notificationPlugin = FlutterLocalNotificationsPlugin();

  bool _isInitialised = false;
  bool get isInitialized => _isInitialised;

//initialized here

  Future<void> initNotification() async {
    if (_isInitialised) return;

    //prepare the androis initSettings

    const initSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    //prepare for the  ios Settings
    const initSettingsIos = DarwinInitializationSettings(
        requestAlertPermission: true,
        requestBadgePermission: true,
        requestSoundPermission: true);

    // init Settings

    const initSettings = InitializationSettings(
        android: initSettingsAndroid, iOS: initSettingsIos);

    //finally initlize the plugin
    await notificationPlugin.initialize(initSettings);
  }

// notifiction Detail setup
  NotificationDetails notificationDetails() {
    return const NotificationDetails(
        android: AndroidNotificationDetails(
            'daily_channel_id', 'Daily_notification',
            channelDescription: 'Daily Notification Channel',
            importance: Importance.max,
            priority: Priority.high),
        iOS: DarwinNotificationDetails());
  }

//show notification

  Future<void> showNotification({
    int id = 0,
    String? title,
    String? body,
  }) async {
    return notificationPlugin.show(
      id,
      title,
      body,
      const NotificationDetails(),
    );
  }
}
