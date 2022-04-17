import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../@core/repository/repo/service.repo.dart';

class ScheduleTodayController extends GetxController {
  final _serviceRepo = Get.find<ServiceRepo>();


  @override
  void onReady() {
    super.onReady();
  }
}