import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationService {
  static FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  static void initialize() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      _handleMessage(message);
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      _handleMessage(message);
    });

    FirebaseMessaging.onBackgroundMessage(_backgroundMessageHandler);

    // Get the FCM token
    _firebaseMessaging.getToken().then((token) {
      if (token != null) {
        log('FCM Token: $token');
        // Optionally send the token to your server
        // sendTokenToServer(token);
      }
    });
  }

  static Future<void> _backgroundMessageHandler(RemoteMessage message) async {
    // Handle background messages
    _handleMessage(message);
  }

  static void _handleMessage(RemoteMessage message) {
    print('Message data: ${message.data}');

    if (message.notification != null) {
      print('Message notification: ${message.notification!.title}');
      print('Message notification: ${message.notification!.body}');
      // Here you can show a local notification or navigate to a specific screen
    }

    // Handle other types of message payloads
  }

  static Future<void> sendTokenToServer(String token) async {
    // Implement your API call to send the token to your server
    // Example:
    // final response = await http.post('your-server-endpoint', body: {'token': token});
    print('Sending token to server: $token');
  }
}
