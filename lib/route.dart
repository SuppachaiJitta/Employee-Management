import 'package:employee_management_suppachai/modules/screen/HomeScreen/view/home_screen.dart';
import 'package:employee_management_suppachai/modules/screen/outsource/view/outsource_detail_screen.dart';
import 'package:employee_management_suppachai/modules/screen/outsource/view/outsource_screen.dart';
import 'package:employee_management_suppachai/modules/screen/permanent/view/permanent_detail_screen.dart';
import 'package:employee_management_suppachai/modules/screen/permanent/view/permanent_form_screen.dart';
import 'package:employee_management_suppachai/modules/screen/permanent/view/permanent_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const home = '/';
  static const permanentList = '/permanent';
  static const permanentDetail = '/permanent/detail';
  static const permanentForm = '/permanent/form';
  static const outsourceList = '/outsource';
  static const outsourceDetail = '/outsource/detail';

  static final routes = [
    GetPage(
      name: home,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: permanentList,
      page: () => const PermanentScreen(),
    ),
    GetPage(
      name: permanentDetail,
      page: () => const PermanentDetailScreen(),
    ),
    GetPage(
      name: permanentForm,
      page: () => const PermanentFormScreen(),
    ),
    GetPage(
      name: outsourceList,
      page: () => const OutsourceScreen(),
    ),
    GetPage(
      name: outsourceDetail,
      page: () => const OutsourceDetailScreen(),
    ),
  ];
}
