import 'package:acs_staff/history/order_history.dart';
import 'package:acs_staff/profile/profile.dart';
import 'package:acs_staff/schedule/register_schedule.dart';
import 'package:acs_staff/schedule/schedule_week.dart';
import 'package:acs_staff/schedule/schedule_today.dart';
import 'package:acs_staff/styles/acs_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pandabar/main.view.dart';
import 'package:pandabar/model.dart';

class BuildBottomNavBar extends StatefulWidget {
  const BuildBottomNavBar({Key? key}) : super(key: key);

  @override
  State<BuildBottomNavBar> createState() => _BuildBottomNavBarState();
}

class _BuildBottomNavBarState extends State<BuildBottomNavBar> {
  String page = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: SizedBox(
          height: 100,
          child: PandaBar(
            backgroundColor: ACSColors.primary,
            buttonSelectedColor: ACSColors.white,
            fabIcon: const Icon(CupertinoIcons.add,
                color: ACSColors.white, size: 30),
            fabColors: const [
              ACSColors.primary,
              ACSColors.primary,
              ACSColors.primary,
            ],
            buttonData: [
              PandaBarButtonData(
                id: 'Today',
                icon: CupertinoIcons.doc_text,
                title: 'Today',
              ),
              PandaBarButtonData(
                id: 'Schedule',
                icon: Icons.home,
                title: 'Schedule',
              ),
              PandaBarButtonData(
                id: 'History',
                icon: Icons.history,
                title: 'History',
              ),
              PandaBarButtonData(
                id: 'Profile',
                icon: Icons.person,
                title: 'Profile',
              ),
            ],
            onChange: (id) {
              setState(() => page = id);
            },
            onFabButtonPressed: () =>
                Get.to(() => const RegisterScheduleScreen()),
          ),
        ),
        body: Builder(
          builder: (context) {
            switch (page) {
              case 'Schedule':
                return const ScheduleWeekScreen();
              case 'Profile':
                return const ProfileScreen();
              case 'History':
                return const OrderHistoryScreen();
              case 'Today':
                return const ScheduleToday();
              default:
                return const ScheduleToday();
            }
          },
        ));
  }
}
