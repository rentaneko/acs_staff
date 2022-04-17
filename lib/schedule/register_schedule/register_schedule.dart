import 'package:acs_staff/@share/router/pages.dart';
import 'package:acs_staff/@share/utils/util.dart';
import 'package:acs_staff/schedule/register_schedule/register_schedule.controller.dart';
import 'package:acs_staff/styles/acs_colors.dart';
import 'package:acs_staff/styles/acs_typhoghraphy.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScheduleScreen extends GetWidget<RegisterScheduleController> {
  const RegisterScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () => goToAndRemoveAll(screen: ROUTER_NAVBAR),
        child: Scaffold(
            backgroundColor: ACSColors.background,
            appBar: AppBar(
              backgroundColor: ACSColors.primary,
              automaticallyImplyLeading: false,
              elevation: 0,
              centerTitle: true,
              actions: [
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      useSafeArea: true,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(
                            'Bạn xác nhận thoát khỏi giao diện lịch biểu?',
                            style: ACSTyphoghraphy.confirmHeading
                                .copyWith(fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                          actionsAlignment: MainAxisAlignment.spaceAround,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                          ),
                          insetPadding:
                          const EdgeInsets.symmetric(horizontal: 22),
                          contentPadding: const EdgeInsets.all(16),
                          actionsPadding: const EdgeInsets.only(bottom: 16),
                          actions: [
                            ElevatedButton(
                              onPressed: () => goBack(),
                              child:
                              Text('Hủy', style: ACSTyphoghraphy.buttonTitle),
                              style: ElevatedButton.styleFrom(
                                primary: ACSColors.primary,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                elevation: 5,
                                minimumSize: const Size(130, 42),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                                goToAndRemoveAll(screen: ROUTER_NAVBAR);
                              },
                              child: const Text('Đồng ý',
                                  style: ACSTyphoghraphy.buttonTitle),
                              style: ElevatedButton.styleFrom(
                                primary: ACSColors.primary,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                elevation: 5,
                                minimumSize: const Size(130, 42),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  icon: Image.asset(
                    'assets/icons/close-square.png',
                    color: ACSColors.white,
                    height: 40,
                    width: 40,
                  ),
                ),
              ],
              title: const Text('Đăng ký lịch biểu',
                  style: ACSTyphoghraphy.titleAppbar),
            ),
            body: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Container(
                margin: const EdgeInsets.only(left: 12, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: ACSColors.primary),
                      ),
                      padding: const EdgeInsets.all(16),
                      margin:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              'Lưu ý',
                              style: ACSTyphoghraphy.stepTitle
                                  .copyWith(color: Colors.red),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Ca 1  (Từ 7h30 đến 9h30)',
                            style: ACSTyphoghraphy.appointmentTitle
                                .copyWith(color: Colors.black38),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Ca 2  (Từ 9h30 đến 11h30)',
                            style: ACSTyphoghraphy.appointmentTitle
                                .copyWith(color: Colors.black38),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Ca 3  (Từ 13h30 đến 15h30)',
                            style: ACSTyphoghraphy.appointmentTitle
                                .copyWith(color: Colors.black38),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Ca 4  (Từ 15h30 đến 17h30)',
                            style: ACSTyphoghraphy.appointmentTitle
                                .copyWith(color: Colors.black38),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text('Thứ/Ca', style: ACSTyphoghraphy.confirmHeading),
                        Text('Ca 1', style: ACSTyphoghraphy.confirmHeading),
                        Text('Ca 2', style: ACSTyphoghraphy.confirmHeading),
                        Text('Ca 3', style: ACSTyphoghraphy.confirmHeading),
                        Text('Ca 4', style: ACSTyphoghraphy.confirmHeading),
                      ],
                    ),
                    Obx(() => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text('Thứ 2', style: ACSTyphoghraphy.confirmSubTitle),
                          const SizedBox(),
                          Checkbox(value: controller.monday[0] , onChanged: (value) => controller.monday[0] = value ?? false),
                          Checkbox(value: controller.monday[1], onChanged: (value) => controller.monday[1] = value ?? false),
                          Checkbox(value: controller.monday[2], onChanged: (value) => controller.monday[2] = value ?? false),
                          Checkbox(value: controller.monday[3], onChanged: (value) => controller.monday[3] = value ?? false),
                        ],
                      ),
                    ),
                    Obx(() => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text('Thứ 3', style: ACSTyphoghraphy.confirmSubTitle),
                          const SizedBox(),
                          Checkbox(value: controller.tuesday[0] , onChanged: (value) => controller.tuesday[0] = value ?? false),
                          Checkbox(value: controller.tuesday[1], onChanged: (value) => controller.tuesday[1] = value ?? false),
                          Checkbox(value: controller.tuesday[2], onChanged: (value) => controller.tuesday[2] = value ?? false),
                          Checkbox(value: controller.tuesday[3], onChanged: (value) => controller.tuesday[3] = value ?? false),
                        ],
                      ),
                    ),
                    Obx(() => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text('Thứ 4', style: ACSTyphoghraphy.confirmSubTitle),
                          const SizedBox(),
                          Checkbox(value: controller.wednesday[0] , onChanged: (value) => controller.wednesday[0] = value ?? false),
                          Checkbox(value: controller.wednesday[1], onChanged: (value) => controller.wednesday[1] = value ?? false),
                          Checkbox(value: controller.wednesday[2], onChanged: (value) => controller.wednesday[2] = value ?? false),
                          Checkbox(value: controller.wednesday[3], onChanged: (value) => controller.wednesday[3] = value ?? false),
                        ],
                      ),
                    ),
                    Obx(() => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text('Thứ 5', style: ACSTyphoghraphy.confirmSubTitle),
                          const SizedBox(),
                          Checkbox(value: controller.thursday[0] , onChanged: (value) => controller.thursday[0] = value ?? false),
                          Checkbox(value: controller.thursday[1], onChanged: (value) => controller.thursday[1] = value ?? false),
                          Checkbox(value: controller.thursday[2], onChanged: (value) => controller.thursday[2] = value ?? false),
                          Checkbox(value: controller.thursday[3], onChanged: (value) => controller.thursday[3] = value ?? false),
                        ],
                      ),
                    ),
                    Obx(() => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text('Thứ 6', style: ACSTyphoghraphy.confirmSubTitle),
                          const SizedBox(),
                          Checkbox(value: controller.friday[0] , onChanged: (value) => controller.friday[0] = value ?? false),
                          Checkbox(value: controller.friday[1], onChanged: (value) => controller.friday[1] = value ?? false),
                          Checkbox(value: controller.friday[2], onChanged: (value) => controller.friday[2] = value ?? false),
                          Checkbox(value: controller.friday[3], onChanged: (value) => controller.friday[3] = value ?? false),
                        ],
                      ),
                    ),
                    Obx(() => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text('Thứ 7', style: ACSTyphoghraphy.confirmSubTitle),
                          const SizedBox(),
                          Checkbox(value: controller.saturday[0] , onChanged: (value) => controller.saturday[0] = value ?? false),
                          Checkbox(value: controller.saturday[1], onChanged: (value) => controller.saturday[1] = value ?? false),
                          Checkbox(value: controller.saturday[2], onChanged: (value) => controller.saturday[2] = value ?? false),
                          Checkbox(value: controller.saturday[3], onChanged: (value) => controller.saturday[3] = value ?? false),
                        ],
                      ),
                    ),
                    Obx(() => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text('Ch.Nhật', style: ACSTyphoghraphy.confirmSubTitle),
                          const SizedBox(),
                          Checkbox(value: controller.sunday[0] , onChanged: (value) => controller.sunday[0] = value ?? false),
                          Checkbox(value: controller.sunday[1], onChanged: (value) => controller.sunday[1] = value ?? false),
                          Checkbox(value: controller.sunday[2], onChanged: (value) => controller.sunday[2] = value ?? false),
                          Checkbox(value: controller.sunday[3], onChanged: (value) => controller.sunday[3] = value ?? false),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Xóa',
                              style: ACSTyphoghraphy.buttonTitle),
                          style: ElevatedButton.styleFrom(
                            primary: ACSColors.primary,
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 24),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => controller.registerSlots(),
                          child: const Text('Xác nhận',
                              style: ACSTyphoghraphy.buttonTitle),
                          style: ElevatedButton.styleFrom(
                            primary: ACSColors.primary,
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 24),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}