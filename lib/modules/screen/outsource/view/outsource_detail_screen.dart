import 'package:employee_management_suppachai/modules/components/custom_list_tile.dart';
import 'package:employee_management_suppachai/modules/screen/outsource/controller/outsource_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OutsourceDetailScreen extends GetView<OutsourceDetailController> {
  const OutsourceDetailScreen({super.key});

  @override
  OutsourceDetailController get controller =>
      Get.put<OutsourceDetailController>(
        OutsourceDetailController(),
      );

  @override
  Widget build(BuildContext context) {
    final user = controller.outsource;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(user.name ?? 'Outsource Detail'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 16.0,
          children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 60,
              child: Image.network(
                user.photo ?? '',
                width: 120,
                height: 120,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(
                    Icons.person,
                    size: 60,
                    color: Colors.grey,
                  );
                },
              ),
            ),
            CustomListTile(
              label: 'Name',
              trailingWidget: Text('${user.name}'),
            ),
            CustomListTile(
              label: 'Company',
              trailingWidget: Text('${user.company}'),
            ),
            CustomListTile(
              label: 'Username',
              trailingWidget: Text('${user.username}'),
            ),
            CustomListTile(
              label: 'Email',
              trailingWidget: Text('${user.email}'),
            ),
            CustomListTile(
              label: 'Address',
              trailingWidget: Text('${user.address}'),
            ),
            CustomListTile(
              label: 'Zip',
              trailingWidget: Text('${user.zip}'),
            ),
            CustomListTile(
              label: 'State',
              trailingWidget: Text('${user.state}'),
            ),
            CustomListTile(
              label: 'Country',
              trailingWidget: Text('${user.country}'),
            ),
            CustomListTile(
              label: 'Phone',
              trailingWidget: Text('${user.phone}'),
            ),
          ],
        ),
      ),
    );
  }
}
