import 'package:employee_management_suppachai/models/outsource_model.dart';
import 'package:employee_management_suppachai/services/api_client.dart';
import 'package:get/get.dart';

class OutsourceController extends GetxController {
  final ApiService apiService = Get.find<ApiService>();

  final outsourceList = <OutsourceModel>[].obs;

  final _isLoading = false.obs;
  bool get isLoading => _isLoading.value;

  @override
  void onInit() {
    fetchUsers();
    super.onInit();
  }

  void fetchUsers() async {
    try {
      _isLoading(true);
      final response = await apiService.getRequest('/users');

      if (response.statusCode == 200) {
        final List<dynamic> data = response.body;
        outsourceList.value =
            data.map((e) => OutsourceModel.fromJson(e)).toList();
      } else {
        Get.snackbar('Error', 'โหลดข้อมูลไม่สำเร็จ: ${response.statusCode}');
      }
    } catch (e) {
      Get.snackbar('Error', 'เกิดข้อผิดพลาด: $e');
    } finally {
      _isLoading(false);
    }
  }
}
