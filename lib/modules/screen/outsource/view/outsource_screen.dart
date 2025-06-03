import 'package:employee_management_suppachai/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:employee_management_suppachai/modules/screen/outsource/controller/outsource_controller.dart';

class OutsourceScreen extends GetView<OutsourceController> {
  const OutsourceScreen({super.key});

  @override
  OutsourceController get controller => Get.put(OutsourceController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Outsource Employees'),
      ),
      body: Obx(() {
        if (controller.isLoading) {
          return ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: 10,
            itemBuilder: (_, __) => ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey[300],
                child: const Icon(Icons.person, color: Colors.grey),
              ),
              title: Container(
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              subtitle: Container(
                height: 15,
                margin: const EdgeInsets.only(top: 8),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          );
        } else {
          if (controller.outsourceList.isEmpty) {
            return const Center(child: Text('No data found'));
          }
          return ListView.separated(
            separatorBuilder: (_, __) => const Divider(),
            itemCount: controller.outsourceList.length,
            itemBuilder: (context, index) {
              final user = controller.outsourceList[index];
              return GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.outsourceDetail, arguments: user);
                },
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 20,
                    child: Image.network(
                      user.photo ?? '',
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(
                          Icons.person,
                          color: Colors.grey,
                        );
                      },
                    ),
                  ),
                  title: Text(user.name ?? 'No Name'),
                  subtitle: Text(user.email ?? 'No Email'),
                ),
              );
            },
          );
        }
      }),
    );
  }
}
