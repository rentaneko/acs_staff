import 'package:acs_staff/schedule/edit_schedule.dart';
import 'package:acs_staff/styles/acs_colors.dart';
import 'package:acs_staff/styles/acs_typhoghraphy.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScheduleWeekScreen extends StatefulWidget {
  const ScheduleWeekScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleWeekScreen> createState() => _ScheduleWeekScreenState();
}

class _ScheduleWeekScreenState extends State<ScheduleWeekScreen> {
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text('Thứ/Ca', style: ACSTyphoghraphy.confirmHeading),
                    Text('Ca 1', style: ACSTyphoghraphy.confirmHeading),
                    Text('Ca 2', style: ACSTyphoghraphy.confirmHeading),
                    Text('Ca 3', style: ACSTyphoghraphy.confirmHeading),
                    Text('Ca 4', style: ACSTyphoghraphy.confirmHeading),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Thứ 2', style: ACSTyphoghraphy.confirmSubTitle),
                    Image.asset(
                      'assets/icons/check-square.png',
                      height: 24,
                      width: 24,
                      color: Colors.green,
                    ),
                    Image.asset(
                      'assets/icons/check-square.png',
                      height: 24,
                      width: 24,
                      color: Colors.green,
                    ),
                    Image.asset(
                      'assets/icons/cancel-square.png',
                      height: 24,
                      width: 24,
                      color: Colors.red,
                    ),
                    Image.asset(
                      'assets/icons/check-square.png',
                      height: 24,
                      width: 24,
                      color: Colors.green,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Thứ 3', style: ACSTyphoghraphy.confirmSubTitle),
                    Image.asset(
                      'assets/icons/check-square.png',
                      height: 24,
                      width: 24,
                      color: Colors.green,
                    ),
                    Image.asset(
                      'assets/icons/check-square.png',
                      height: 24,
                      width: 24,
                      color: Colors.green,
                    ),
                    Image.asset(
                      'assets/icons/cancel-square.png',
                      height: 24,
                      width: 24,
                      color: Colors.red,
                    ),
                    Image.asset(
                      'assets/icons/check-square.png',
                      height: 24,
                      width: 24,
                      color: Colors.green,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Thứ 4', style: ACSTyphoghraphy.confirmSubTitle),
                    Image.asset(
                      'assets/icons/check-square.png',
                      height: 24,
                      width: 24,
                      color: Colors.green,
                    ),
                    Image.asset(
                      'assets/icons/check-square.png',
                      height: 24,
                      width: 24,
                      color: Colors.green,
                    ),
                    Image.asset(
                      'assets/icons/cancel-square.png',
                      height: 24,
                      width: 24,
                      color: Colors.red,
                    ),
                    Image.asset(
                      'assets/icons/check-square.png',
                      height: 24,
                      width: 24,
                      color: Colors.green,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Thứ 5', style: ACSTyphoghraphy.confirmSubTitle),
                    Image.asset(
                      'assets/icons/check-square.png',
                      height: 24,
                      width: 24,
                      color: Colors.green,
                    ),
                    Image.asset(
                      'assets/icons/check-square.png',
                      height: 24,
                      width: 24,
                      color: Colors.green,
                    ),
                    Image.asset(
                      'assets/icons/cancel-square.png',
                      height: 24,
                      width: 24,
                      color: Colors.red,
                    ),
                    Image.asset(
                      'assets/icons/check-square.png',
                      height: 24,
                      width: 24,
                      color: Colors.green,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Thứ 6', style: ACSTyphoghraphy.confirmSubTitle),
                    Image.asset(
                      'assets/icons/check-square.png',
                      height: 24,
                      width: 24,
                      color: Colors.green,
                    ),
                    Image.asset(
                      'assets/icons/check-square.png',
                      height: 24,
                      width: 24,
                      color: Colors.green,
                    ),
                    Image.asset(
                      'assets/icons/cancel-square.png',
                      height: 24,
                      width: 24,
                      color: Colors.red,
                    ),
                    Image.asset(
                      'assets/icons/check-square.png',
                      height: 24,
                      width: 24,
                      color: Colors.green,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Thứ 7', style: ACSTyphoghraphy.confirmSubTitle),
                    Image.asset(
                      'assets/icons/check-square.png',
                      height: 24,
                      width: 24,
                      color: Colors.green,
                    ),
                    Image.asset(
                      'assets/icons/check-square.png',
                      height: 24,
                      width: 24,
                      color: Colors.green,
                    ),
                    Image.asset(
                      'assets/icons/cancel-square.png',
                      height: 24,
                      width: 24,
                      color: Colors.red,
                    ),
                    Image.asset(
                      'assets/icons/check-square.png',
                      height: 24,
                      width: 24,
                      color: Colors.green,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('  CN   ',
                        style: ACSTyphoghraphy.confirmSubTitle),
                    Image.asset(
                      'assets/icons/check-square.png',
                      height: 24,
                      width: 24,
                      color: Colors.green,
                    ),
                    Image.asset(
                      'assets/icons/check-square.png',
                      height: 24,
                      width: 24,
                      color: Colors.green,
                    ),
                    Image.asset(
                      'assets/icons/cancel-square.png',
                      height: 24,
                      width: 24,
                      color: Colors.red,
                    ),
                    Image.asset(
                      'assets/icons/check-square.png',
                      height: 24,
                      width: 24,
                      color: Colors.green,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
