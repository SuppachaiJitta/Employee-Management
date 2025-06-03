import 'package:employee_management_suppachai/modules/screen/permanent/controller/permanent_controller.dart';
import 'package:employee_management_suppachai/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PermanentScreen extends GetView<PermanentController> {
  const PermanentScreen({super.key});

  @override
  PermanentController get controller => Get.put(PermanentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Permanent Employees'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_box_rounded),
            onPressed: () {
              Get.toNamed(
                AppRoutes.permanentForm,
              );
            },
          ),
        ],
      ),
      body: Obx(() {
        return ListView.separated(
          separatorBuilder: (_, __) => const Divider(),
          itemCount: controller.permanentList.length,
          itemBuilder: (context, index) {
            final user = controller.permanentList[index];
            return GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.permanentDetail, arguments: user);
              },
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  child: const Icon(
                    Icons.person,
                    color: Colors.grey,
                    size: 18,
                  ),
                ),
                title: Text(user.name ?? 'No Name'),
                subtitle: Text(user.email ?? 'No Email'),
                trailing: IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  onPressed: () {
                    Get.defaultDialog(
                      title: 'Confirm Delete',
                      middleText:
                          'Are you sure you want to delete ${user.name}?',
                      textCancel: 'Cancel',
                      textConfirm: 'Delete',
                      confirmTextColor: Colors.white,
                      onConfirm: () => controller.deleteEmployee(user.id ?? ''),
                    );
                  },
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
