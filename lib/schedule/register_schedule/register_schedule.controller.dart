import 'dart:ffi';

import 'package:acs_staff/@share/constants/value.constant.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../@core/repository/models/Slot.dart';
import '../../@core/repository/repo/service.repo.dart';
import '../../@share/utils/util.dart';

class RegisterScheduleController extends GetxController {
  final _serviceRepo = Get.find<ServiceRepo>();

  var monday = [false, false, false, false].obs;
  var tuesday = [false, false, false, false].obs;
  var wednesday = [false, false, false, false].obs;
  var thursday = [false, false, false, false].obs;
  var friday = [false, false, false, false].obs;
  var saturday = [false, false, false, false].obs;
  var sunday = [false, false, false, false].obs;

  @override
  void onReady() {
    super.onReady();
  }

  registerSlots() {
    for (int i = 1; i <= monday.length; i++) {
      if (monday[i - 1] == true) {
        var date = DateFormat(FORMAT_DAY).format(mostRecentWeekday(DateTime.now(), 1));
        callApiCreate(i, date);
      }
    }

    for (int i = 1; i <= tuesday.length; i++) {
      if (tuesday[i - 1] == true) {
        var date = DateFormat(FORMAT_DAY).format(mostRecentWeekday(DateTime.now(), 2));
        callApiCreate(i, date);
      }
    }

    for (int i = 1; i <= wednesday.length; i++) {
      if (wednesday[i - 1] == true) {
        var date = DateFormat(FORMAT_DAY).format(mostRecentWeekday(DateTime.now(), 3));
        callApiCreate(i, date);
      }
    }

    for (int i = 1; i <= thursday.length; i++) {
      if (thursday[i - 1] == true) {
        var date = DateFormat(FORMAT_DAY).format(
            mostRecentWeekday(DateTime.now(), 4));
        callApiCreate(i, date);
      }
    }

    for (int i = 1; i <= friday.length; i++) {
      if (friday[i - 1] == true) {
        var date = DateFormat(FORMAT_DAY).format(
            mostRecentWeekday(DateTime.now(), 5));
        callApiCreate(i, date);
      }
    }

    for (int i = 1; i <= saturday.length; i++) {
      if (saturday[i - 1] == true) {
        var date = DateFormat(FORMAT_DAY).format(
            mostRecentWeekday(DateTime.now(), 6));
        callApiCreate(i, date);
      }
    }

    for (int i = 1; i <= sunday.length; i++) {
      if (sunday[i - 1] == true) {
        var date = DateFormat(FORMAT_DAY).format(
            mostRecentWeekday(DateTime.now(), 6).add(const Duration(days: 1)));
        callApiCreate(i, date);
      }
    }
  }

  callApiCreate(int slotId, String registerDate) async {
    showLoading();
    await _serviceRepo.createWorkSlot(map: {
      "register_date": registerDate,
      "slot_id": slotId.toString(),
      "staff_id": 19.toString()
    }) //TODO:
        .then((value) => {
              if (value)
                {
                  showSnackBar(
                      title: "Thông báo", content: "Register thành công"),
                }
              else
                showSnackBar(title: "Báo lỗi", content: "createWorkSlot Lỗi"),
              hideLoading()
            });
  }
}
