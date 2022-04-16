import 'package:acs_staff/@core/repository/models/Slot.dart';
import 'package:get/get.dart';

import '../../@core/repository/repo/service.repo.dart';
import '../../@share/utils/util.dart';


class ScheduleWeekController extends GetxController {
  final _serviceRepo = Get.find<ServiceRepo>();
  var listSlots = <Slot>[].obs;

  @override
  void onReady() {
    getSlots();
    super.onReady();
  }

  getSlots() async {
      showLoading();
      //TODO: staff id hard code
      await _serviceRepo.getSlots(staffId: 19).then((value) => {
        if (value != null)
          listSlots.value = value
        else
          showSnackBar(
              title: "Báo lỗi", content: "getSlots Lỗi"),
        hideLoading()
      });
  }

}