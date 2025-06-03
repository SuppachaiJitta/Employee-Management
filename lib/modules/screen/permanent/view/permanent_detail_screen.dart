import 'package:employee_management_suppachai/modules/components/custom_list_tile.dart';
import 'package:employee_management_suppachai/modules/components/custom_text_form_field.dart';
import 'package:employee_management_suppachai/modules/screen/permanent/controller/permanent_controller.dart';
import 'package:employee_management_suppachai/modules/screen/permanent/controller/permanent_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PermanentDetailScreen extends GetView<PermanentDetailController> {
  const PermanentDetailScreen({super.key});

  @override
  PermanentDetailController get controller =>
      Get.put<PermanentDetailController>(
        PermanentDetailController(
          permanentController: Get.find<PermanentController>(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    final user = controller.permanent;

    return Scaffold(
      appBar: AppBar(
        title: Obx(() {
          return Text(user.value.name ?? 'Employee Detail');
        }),
        actions: [
          Obx(() {
            return IconButton(
              icon: Icon(controller.isEditing ? Icons.save : Icons.edit),
              onPressed: () {
                controller.editEmployee();
              },
            );
          }),
        ],
      ),
      body: Obx(() {
        return SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            spacing: 16.0,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey[300],
                radius: 40,
                child: const Icon(
                  Icons.person,
                  color: Colors.grey,
                  size: 40,
                ),
              ),
              const SizedBox(height: 16),
              CustomListTile(
                  label: "ID",
                  trailingWidget: Text(
                    user.value.id ?? '',
                    textAlign: TextAlign.end,
                  )),
              CustomListTile(
                label: "Name",
                trailingWidget: controller.isEditing
                    ? CustomTextFormField(
                        controller.nameController,
                      )
                    : Text(
                        user.value.name ?? '',
                        textAlign: TextAlign.end,
                      ),
              ),
              CustomListTile(
                label: "Position",
                trailingWidget: controller.isEditing
                    ? CustomTextFormField(
                        controller.positionController,
                      )
                    : Text(
                        user.value.position ?? '',
                        textAlign: TextAlign.end,
                      ),
              ),
              CustomListTile(
                label: "Email",
                trailingWidget: controller.isEditing
                    ? CustomTextFormField(
                        controller.emailController,
                      )
                    : Text(
                        user.value.email ?? '',
                        textAlign: TextAlign.end,
                      ),
              ),
              CustomListTile(
                label: "Phone",
                trailingWidget: controller.isEditing
                    ? CustomTextFormField(
                        controller.phoneController,
                      )
                    : Text(
                        user.value.phone ?? '',
                        textAlign: TextAlign.end,
                      ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
