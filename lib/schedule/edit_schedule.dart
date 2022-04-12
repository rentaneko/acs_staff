import 'package:acs_staff/styles/acs_colors.dart';
import 'package:acs_staff/styles/acs_typhoghraphy.dart';
import 'package:flutter/material.dart';

class EditSchedule extends StatefulWidget {
  const EditSchedule({Key? key}) : super(key: key);

  @override
  State<EditSchedule> createState() => _EditScheduleState();
}

class _EditScheduleState extends State<EditSchedule> {
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
            title: const Text('Thay đổi lịch biểu',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text('Thứ 2', style: ACSTyphoghraphy.confirmSubTitle),
                      SizedBox(),
                      Checkbox(value: true, onChanged: null),
                      Checkbox(value: true, onChanged: null),
                      Checkbox(value: true, onChanged: null),
                      Checkbox(value: true, onChanged: null),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text('Thứ 3', style: ACSTyphoghraphy.confirmSubTitle),
                      SizedBox(),
                      Checkbox(value: true, onChanged: null),
                      Checkbox(value: true, onChanged: null),
                      Checkbox(value: true, onChanged: null),
                      Checkbox(value: true, onChanged: null),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text('Thứ 4', style: ACSTyphoghraphy.confirmSubTitle),
                      SizedBox(),
                      Checkbox(value: true, onChanged: null),
                      Checkbox(value: true, onChanged: null),
                      Checkbox(value: true, onChanged: null),
                      Checkbox(value: true, onChanged: null),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text('Thứ 5', style: ACSTyphoghraphy.confirmSubTitle),
                      SizedBox(),
                      Checkbox(value: true, onChanged: null),
                      Checkbox(value: true, onChanged: null),
                      Checkbox(value: true, onChanged: null),
                      Checkbox(value: true, onChanged: null),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text('Thứ 6', style: ACSTyphoghraphy.confirmSubTitle),
                      SizedBox(),
                      Checkbox(value: true, onChanged: null),
                      Checkbox(value: true, onChanged: null),
                      Checkbox(value: true, onChanged: null),
                      Checkbox(value: true, onChanged: null),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text('Thứ 7', style: ACSTyphoghraphy.confirmSubTitle),
                      SizedBox(),
                      Checkbox(value: true, onChanged: null),
                      Checkbox(value: true, onChanged: null),
                      Checkbox(value: true, onChanged: null),
                      Checkbox(value: true, onChanged: null),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text('Ch.Nhật', style: ACSTyphoghraphy.confirmSubTitle),
                      Checkbox(value: true, onChanged: null),
                      Checkbox(value: true, onChanged: null),
                      Checkbox(value: true, onChanged: null),
                      Checkbox(value: true, onChanged: null),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Hủy bỏ',
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
                        onPressed: () {},
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
    );
  }
}
