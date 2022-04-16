import 'package:acs_staff/@share/utils/util.dart';
import 'package:acs_staff/build_nav_bar.controller.dart';
import 'package:acs_staff/styles/acs_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pandabar/main.view.dart';
import 'package:pandabar/model.dart';

import '@share/router/pages.dart';

class BuildBottomNavBar extends GetWidget<NavBarController> {
  const BuildBottomNavBar({Key? key}) : super(key: key);

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
                id: 0,
                icon: CupertinoIcons.doc_text,
                title: 'Today',
              ),
              PandaBarButtonData(
                id: 1,
                icon: Icons.home,
                title: 'Schedule',
              ),
              PandaBarButtonData(
                id: 2,
                icon: Icons.history,
                title: 'History',
              ),
              PandaBarButtonData(
                id: 3,
                icon: Icons.person,
                title: 'Profile',
              ),
            ],
            onChange: (id) {
              controller.selectIndex(id);
            },
            onFabButtonPressed: () =>
                goTo(screen: ROUTE_REGISTER_SCHEDULE),
          ),
        ),
        body: Obx(() => controller.getScreen()));
  }
}
