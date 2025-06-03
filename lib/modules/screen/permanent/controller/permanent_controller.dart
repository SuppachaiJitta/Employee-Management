import 'package:employee_management_suppachai/models/permanent_model.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

class PermanentController extends GetxController {
  final _permanentList = <PermanentModel>[].obs;
  List<PermanentModel> get permanentList => _permanentList;

  @override
  void onInit() {
    super.onInit();
    _loadInitialData();
  }

  void _loadInitialData() {
    _permanentList.addAll(
      [
        PermanentModel(
          id: const Uuid().v4(),
          name: "Moises Wehner",
          position: "Mobile Developer",
          email: "Ross.Stehr@gmail.com",
          phone: "0888888888",
        ),
        PermanentModel(
          id: const Uuid().v4(),
          name: "Front-End Developer",
          position: "Feil - Kutch",
          email: "Feil@gmail.com",
          phone: "0899999999",
        ),
      ],
    );
  }

  void deleteEmployee(String id) {
    _permanentList.removeWhere((e) => e.id == id);
    Get.back();
    Get.snackbar('Deleted', 'Employee has been deleted');
  }
}
