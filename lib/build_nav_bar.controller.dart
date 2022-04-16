import 'package:acs_staff/@share/utils/util.dart';
import 'package:acs_staff/profile/profile.dart';
import 'package:acs_staff/schedule/schedule_today.dart';
import 'package:acs_staff/schedule/schedule_week/schedule_week.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'history/order_history.dart';

class NavBarController extends GetxController {

  var _selectedIndex = 0.obs;

  var tab = Get.arguments;

  @override
  void onReady() {
    if(tab != null){
      selectIndex(tab[0]);
    }
    super.onReady();
  }

  final List<Widget> _screenList = [
    ScheduleToday(),
    ScheduleWeekScreen(),
    OrderHistoryScreen(),
    ProfileScreen()
  ];

  selectIndex(int index) => _selectedIndex.value = index;

  getScreen() => _screenList[_selectedIndex.value];

}