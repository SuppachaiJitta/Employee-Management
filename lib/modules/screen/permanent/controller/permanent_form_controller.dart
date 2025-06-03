import 'package:employee_management_suppachai/models/permanent_model.dart';
import 'package:employee_management_suppachai/modules/screen/permanent/controller/permanent_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

class PermanentFormController extends GetxController {
  final PermanentController permanentController;

  PermanentFormController({
    required this.permanentController,
  });

  final _nameController = TextEditingController();
  TextEditingController get nameController => _nameController;

  final _positionController = TextEditingController();
  TextEditingController get positionController => _positionController;

  final _emailController = TextEditingController();
  TextEditingController get emailController => _emailController;

  final _phoneController = TextEditingController();
  TextEditingController get phoneController => _phoneController;

  final _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> get formKey => _formKey;

  void addEmployee() {
    if (_formKey.currentState!.validate()) {
      final newEmployee = PermanentModel(
        id: const Uuid().v4(),
        name: _nameController.text,
        position: _positionController.text,
        email: _emailController.text,
        phone: _phoneController.text,
      );

      permanentController.permanentList.add(newEmployee);
      Get.back();
      Get.snackbar('Success', 'New employee added');
    }
  }
}
