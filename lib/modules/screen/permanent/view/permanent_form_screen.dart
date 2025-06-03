import 'package:employee_management_suppachai/modules/components/custom_text_form_field.dart';
import 'package:employee_management_suppachai/modules/screen/permanent/controller/permanent_controller.dart';
import 'package:employee_management_suppachai/modules/screen/permanent/controller/permanent_form_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PermanentFormScreen extends GetView<PermanentFormController> {
  const PermanentFormScreen({
    super.key,
  });

  @override
  PermanentFormController get controller => Get.put(PermanentFormController(
        permanentController: Get.find<PermanentController>(),
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Add Employee"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: controller.formKey,
          child: Column(
            spacing: 10.0,
            children: [
              CustomTextFormField(
                controller.nameController,
                labelText: "Name",
                validator: (value) =>
                    value!.isEmpty ? 'Please enter a name' : null,
              ),
              CustomTextFormField(
                controller.positionController,
                labelText: "Position",
              ),
              CustomTextFormField(
                controller.emailController,
                labelText: 'Email',
              ),
              CustomTextFormField(
                controller.phoneController,
                labelText: 'Phone',
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  controller.addEmployee();
                },
                child: const Text("Add"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
