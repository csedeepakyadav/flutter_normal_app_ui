// import 'package:permission_handler/permission_handler.dart';

// class PermissionHelper {
//   static Future<void> checkPermission() async {
//     final serviceStatus = await Permission.locationWhenInUse.serviceStatus;
//     final isGpsOn = serviceStatus == ServiceStatus.enabled;
//     if (!isGpsOn) {
//       print('Turn on location services before requesting permission.');
//       return;
//     }

//     final status = await Permission.locationWhenInUse.request();
//     if (status == PermissionStatus.granted) {
//       print('Permission granted');
//     } else if (status == PermissionStatus.denied) {
//       print(
//           'Permission denied. Show a dialog and again ask for the permission');
//     } else if (status == PermissionStatus.permanentlyDenied) {
//       print('Take the user to the settings page.');
//       await openAppSettings();
//     }
//   }
// }
