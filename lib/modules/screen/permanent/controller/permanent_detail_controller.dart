import 'package:employee_management_suppachai/models/permanent_model.dart';
import 'package:employee_management_suppachai/modules/screen/permanent/controller/permanent_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PermanentDetailController extends GetxController {
  final PermanentController permanentController;

  PermanentDetailController({
    required this.permanentController,
  });

  final permanent = PermanentModel().obs;

  final _isEditing = false.obs;
  bool get isEditing => _isEditing.value;

  TextEditingController _nameController = TextEditingController();
  TextEditingController get nameController => _nameController;

  TextEditingController _positionController = TextEditingController();
  TextEditingController get positionController => _positionController;

  TextEditingController _emailController = TextEditingController();
  TextEditingController get emailController => _emailController;

  TextEditingController _phoneController = TextEditingController();
  TextEditingController get phoneController => _phoneController;

  @override
  void onInit() {
    permanent.value = Get.arguments as PermanentModel;

    _nameController = TextEditingController(text: permanent.value.name);
    _positionController =
        TextEditingController(text: permanent.value.position);
    _emailController = TextEditingController(text: permanent.value.email);
    _phoneController = TextEditingController(text: permanent.value.phone);

    super.onInit();
  }

  void updateEmployee() {
    final updated = PermanentModel(
      id: permanent.value.id,
      name: _nameController.text,
      position: _positionController.text,
      email: _emailController.text,
      phone: _phoneController.text,
    );

    if (permanent.value.name == updated.name &&
        permanent.value.position == updated.position &&
        permanent.value.email == updated.email &&
        permanent.value.phone == updated.phone) {
      _isEditing.value = false;
      return;
    }

    final index = permanentController.permanentList
        .indexWhere((e) => e.id == permanent.value.id);

    if (index != -1) {
      permanentController.permanentList[index] = updated;
      permanent.value = updated;
      _isEditing.value = false;
      Get.snackbar('Success', 'Employee info updated');
    }
  }

  void editEmployee() {
    if (_isEditing.value) {
      updateEmployee();
    } else {
      _isEditing.value = true;
    }
  }
}
