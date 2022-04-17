import 'package:acs_staff/schedule/edit_schedule.dart';
import 'package:acs_staff/schedule/schedule_week/schedule_week.controller.dart';
import 'package:acs_staff/styles/acs_colors.dart';
import 'package:acs_staff/styles/acs_typhoghraphy.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../@core/repository/models/Slot.dart';
import '../../@share/utils/util.dart';

class ScheduleWeekScreen extends GetWidget<ScheduleWeekController> {
  const ScheduleWeekScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ACSColors.background,
        appBar: AppBar(
          backgroundColor: ACSColors.primary,
          automaticallyImplyLeading: false,
          elevation: 0,
          centerTitle: true,
          title: const Text('Lịch biểu theo tuần',
              style: ACSTyphoghraphy.titleAppbar),
          actions: [
            IconButton(
              onPressed: () => Get.to(() => EditSchedule()),
              icon: Icon(Icons.edit),
            ),
          ],
        ),
        body: Container(
          margin: const EdgeInsets.only(left: 12, top: 30),
          child: SingleChildScrollView(
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text('Thứ/Ca', style: ACSTyphoghraphy.confirmHeading),
                    Text('Ca 1', style: ACSTyphoghraphy.confirmHeading),
                    Text('Ca 2', style: ACSTyphoghraphy.confirmHeading),
                    Text('Ca 3', style: ACSTyphoghraphy.confirmHeading),
                    Text('Ca 4', style: ACSTyphoghraphy.confirmHeading),
                  ],
                ),
                const SizedBox(height: 16),
                GridView.builder(
                    padding: EdgeInsets.only(left: 30, right: 15),
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 5,
                          childAspectRatio: 4,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20),
                      itemCount: 35,
                      itemBuilder: (BuildContext context, int index) {
                         return Obx(() {
                          var slot = controller.listSlots.firstWhereOrNull((element) {
                            if(index < 5) {
                              var registerDay = DateTime.tryParse(element.registerDate ?? '');
                              if(registerDay != null){
                                if(mostRecentWeekday(DateTime.now(), 1).compareTo(registerDay) == 0){
                                  return element.slotId == index;
                                }
                              }
                            }
                            else if(index < 10) {
                              var registerDay = DateTime.tryParse(element.registerDate ?? '');
                              if(registerDay != null){
                                if(mostRecentWeekday(DateTime.now(), 2).compareTo(registerDay) == 0){
                                  return element.slotId == index - 5;
                                }
                              }
                            }
                            else if(index < 15) {
                              var registerDay = DateTime.tryParse(element.registerDate ?? '');
                              if(registerDay != null){
                                if(mostRecentWeekday(DateTime.now(), 3).compareTo(registerDay) == 0){
                                  return element.slotId == index - 10;
                                }
                              }
                            }
                            else if(index < 20) {
                              var registerDay = DateTime.tryParse(element.registerDate ?? '');
                              if(registerDay != null){
                                if(mostRecentWeekday(DateTime.now(), 4).compareTo(registerDay) == 0){
                                  return element.slotId == index - 15;
                                }
                              }
                            }
                            else if(index < 25) {
                              var registerDay = DateTime.tryParse(element.registerDate ?? '');
                              if(registerDay != null){
                                if(mostRecentWeekday(DateTime.now(), 5).compareTo(registerDay) == 0){
                                  return element.slotId == index - 20;
                                }
                              }
                            }
                            else if(index < 30) {
                              var registerDay = DateTime.tryParse(element.registerDate ?? '');
                              if(registerDay != null){
                                if(mostRecentWeekday(DateTime.now(), 6).compareTo(registerDay) == 0){
                                  return element.slotId == index - 25;
                                }
                              }
                            }
                            else if(index > 30) {
                              var registerDay = DateTime.tryParse(element.registerDate ?? '');
                              if(registerDay != null){
                                if(mostRecentWeekday(DateTime.now(), 6).add(const Duration(days: 1)).compareTo(registerDay) == 0){
                                  return element.slotId == index - 30;
                                }
                              }
                            }
                            return false;
                          }
                          );
                          if(index == 0) return const Text('Thứ 2', style: ACSTyphoghraphy.confirmSubTitle);
                          if(index == 5) return const Text('Thứ 3', style: ACSTyphoghraphy.confirmSubTitle);
                          if(index == 10) return const Text('Thứ 4', style: ACSTyphoghraphy.confirmSubTitle);
                          if(index == 15) return const Text('Thứ 5', style: ACSTyphoghraphy.confirmSubTitle);
                          if(index == 20) return const Text('Thứ 6', style: ACSTyphoghraphy.confirmSubTitle);
                          if(index == 25) return const Text('Thứ 7', style: ACSTyphoghraphy.confirmSubTitle);
                          if(index == 30) return const Text('CN', style: ACSTyphoghraphy.confirmSubTitle);
                          return Image.asset(
                            slot != null
                                ? 'assets/icons/check-square.png'
                                : 'assets/icons/cancel-square.png',
                            height: 24,
                            width: 24,
                            color: slot != null ? Colors.green : Colors.red,
                          );
                        });
                      }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
