import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

Future<void> requestPermissions() async {
  // 1. Уведомления
  final notificationStatus = await Permission.notification.request();
  if (notificationStatus.isGranted) {
    debugPrint('Уведомления: разрешены');
  } else if (notificationStatus.isPermanentlyDenied) {
    debugPrint('Уведомления: запрещены навсегда');
    await openAppSettings();
  } else {
    debugPrint('Уведомления: отклонены');
  }

  // 2. Геолокация
  bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    debugPrint('Геолокация: сервис отключён');
    return;
  }

  LocationPermission permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      debugPrint('Геолокация: отклонена');
      return;
    }
  }

  if (permission == LocationPermission.deniedForever) {
    debugPrint('Геолокация: запрещена навсегда');
    return;
  }

  final position = await Geolocator.getCurrentPosition(
    desiredAccuracy: LocationAccuracy.high,
  );
  debugPrint('Позиция: ${position.latitude}, ${position.longitude}');
}
