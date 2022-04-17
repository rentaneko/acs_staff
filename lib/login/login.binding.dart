import 'package:acs_staff/@core/repository/apis/user.api.dart';
import 'package:acs_staff/@core/repository/repo/user.repo.dart';
import 'package:acs_staff/login/login.controller.dart';
import 'package:get/get.dart';

import '../@core/repository/apis/service.api.dart';
import '../@core/repository/repo/service.repo.dart';
import '../@core/repository/storage/data.storage.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DataStorage());
    Get.lazyPut(() => UserApi());
    Get.put(UserRepo(Get.find()));
    Get.lazyPut(() => LoginController());
  }
}