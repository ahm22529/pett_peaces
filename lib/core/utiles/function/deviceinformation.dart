import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';

Future<Map<String, String>> getDeviceInfo() async {
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  String deviceType;
  String deviceModel;
  String locale = WidgetsBinding.instance.window.locale.toString();

  if (Platform.isAndroid) {
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    deviceType = 'Android';
    deviceModel = androidInfo.model;
  } else if (Platform.isIOS) {
    IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
    deviceType = 'iOS';
    deviceModel = iosInfo.utsname.machine;
  } else {
    deviceType = 'Unknown';
    deviceModel = 'Unknown';
  }

  return {
    'deviceType': deviceType,
    'deviceModel': deviceModel,
    'locale': locale,
  };
}
