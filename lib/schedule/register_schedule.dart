import 'package:acs_staff/styles/acs_colors.dart';
import 'package:acs_staff/styles/acs_typhoghraphy.dart';
import 'package:flutter/material.dart';

class RegisterScheduleScreen extends StatefulWidget {
  const RegisterScheduleScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScheduleScreen> createState() => _RegisterScheduleScreenState();
}

class _RegisterScheduleScreenState extends State<RegisterScheduleScreen> {
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
                            onPressed: () => Navigator.of(context).pop(),
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
                              Navigator.of(context).pop();
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
