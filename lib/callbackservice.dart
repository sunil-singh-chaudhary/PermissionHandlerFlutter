import 'package:permission_handler/permission_handler.dart';

class CallbackService {
  static Future<Map<Permission, PermissionStatus>> multiplePermission() async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.camera,
      Permission.storage,
    ].request();

    return statuses;
  }
}
