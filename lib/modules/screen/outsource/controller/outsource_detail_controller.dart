import 'package:employee_management_suppachai/models/outsource_model.dart';
import 'package:get/get.dart';

class OutsourceDetailController extends GetxController {
  OutsourceModel outsource = OutsourceModel();

  @override
  void onInit() {
    outsource = Get.arguments as OutsourceModel;
    super.onInit();
  }
}
