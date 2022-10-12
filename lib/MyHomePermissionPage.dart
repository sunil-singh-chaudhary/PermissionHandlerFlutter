import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_demo_camera_storage/PermissioinController.dart';
import 'package:permission_handler/permission_handler.dart';

class MyHomePermissionPage extends StatefulWidget {
  const MyHomePermissionPage({super.key});

  @override
  State<MyHomePermissionPage> createState() => _MyHomePermissionPageState();
}

class _MyHomePermissionPageState extends State<MyHomePermissionPage> {
  PermissioinController controller = Get.put(PermissioinController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OutlinedButton(
                onPressed: () {
                  print("Camera");
                  _camerPermission();
                },
                child: const Text("Camera Permission")),
            OutlinedButton(
                onPressed: () {
                  _requestPermissionWithOpenSettings();
                },
                child: const Text("agree from setting Permission")),
            OutlinedButton(
                onPressed: () {
                  controller.fetchProduct();
                  int length = controller.listpermission.length;
                  print(length);
                },
                child: const Text("Multiple Permission")),
            Obx(
              () => Expanded(
                child: ListView.builder(
                    itemCount: controller.listpermission.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                          leading: const Icon(Icons.list),
                          trailing: Text(
                            controller.listpermission[index].toString(),
                            style: const TextStyle(
                                color: Colors.green, fontSize: 15),
                          ),
                          title: Text(controller.liststatus[index].toString()));
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _camerPermission() async {
    var status = await Permission.camera.status;
    if (status.isGranted) {
      print("Permission is granted");
    } else if (status.isDenied) {
      // We didn't ask for permission yet or the permission has been denied before but not permanently.
      if (await Permission.camera.request().isGranted) {
        // Either the permission was already granted before or the user just granted it.
        print("Permission was granted");
      }
    }
  }

  void _requestPermissionWithOpenSettings() async {
    openAppSettings();
  }
}
