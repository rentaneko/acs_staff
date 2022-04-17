import 'package:acs_staff/@core/repository/models/Slot.dart';
import 'package:get/get.dart';

import '../../@core/repository/models/Profile.dart';
import '../../@core/repository/repo/service.repo.dart';
import '../../@core/repository/storage/data.storage.dart';
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
      Profile? prof = Get.find<DataStorage>().getToken();
      if(prof != null){
        await _serviceRepo.getSlots(staffId: prof.id ?? 0).then((value) => {
          if (value != null)
            listSlots.value = value
          else
            showSnackBar(
                title: "Báo lỗi", content: "getSlots Lỗi"),
          hideLoading()
        });
      }
  }

}