import 'package:get/state_manager.dart';
import 'package:permission_demo_camera_storage/callbackservice.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissioinController extends GetxController {
  // Map<Permission, PermissionStatus> productlist = Map<Permission, PermissionStatus>[].obs;

  var listpermission = [].obs;
  var liststatus = [].obs;
  // @override
  // void onInit() {
  //   fetchProduct();
  //   super.onInit();
  // }

  void fetchProduct() async {
    Map<Permission, PermissionStatus> map_products =
        await CallbackService.multiplePermission();
    listpermission.value = map_products.values.toList();
    liststatus.value = map_products.keys.toList();
    //  productlist = map_products.toList();
  }
}
