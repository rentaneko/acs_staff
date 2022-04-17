import 'package:acs_staff/@share/utils/util.dart';
import 'package:acs_staff/profile/profile.dart';
import 'package:acs_staff/schedule/schedule_today.dart';
import 'package:acs_staff/schedule/schedule_week/schedule_week.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '@core/repository/models/Profile.dart';
import '@core/repository/storage/data.storage.dart';
import '@share/router/pages.dart';
import 'history/order_history.dart';

class NavBarController extends GetxController {

  var _selectedIndex = 0.obs;

  var tab = Get.arguments;

  Profile? prof = Profile.fromJson(Get.find<DataStorage>().getToken());

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

  signOut() {
    Get.find<DataStorage>().setToken(null);
    goToAndRemoveAll(screen: ROUTER_LOGIN);
  }

}