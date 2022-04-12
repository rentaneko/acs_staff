import 'package:acs_staff/styles/acs_colors.dart';
import 'package:acs_staff/styles/acs_typhoghraphy.dart';
import 'package:flutter/material.dart';

class ScheduleToday extends StatefulWidget {
  const ScheduleToday({Key? key}) : super(key: key);

  @override
  State<ScheduleToday> createState() => _ScheduleTodayState();
}

class _ScheduleTodayState extends State<ScheduleToday> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ACSColors.background,
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                const SizedBox(height: 30),
                const Text('Ngày 12/04/2022',
                    style: ACSTyphoghraphy.homeHeading),
                const SizedBox(height: 30),
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
                      const Text('Tên khách hàng: Uyên',
                          style: ACSTyphoghraphy.detail),
                      const Text('Số điện thoại: 1243456789',
                          style: ACSTyphoghraphy.detail),
                      const Text(
                          'Địa chỉ: 123 đường avc phường đfem quận ezdfo',
                          style: ACSTyphoghraphy.detail),
                      const Text('Thời gian dự kiến: 10h00 ngày 14/04/2022',
                          style: ACSTyphoghraphy.detail),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('Từ chối',
                                style: ACSTyphoghraphy.buttonTitle),
                            style: ElevatedButton.styleFrom(
                              primary: ACSColors.red.withOpacity(0.7),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('Chấp nhận',
                                style: ACSTyphoghraphy.buttonTitle),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green.shade400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
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
                      Row(
                        children: [
                          const Text('Trạng thái: ',
                              style: ACSTyphoghraphy.detail),
                          const SizedBox(width: 10),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 6, horizontal: 10),
                            decoration: BoxDecoration(
                              color: Colors.green.shade400,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Row(
                              children: [
                                Image.asset('assets/icons/check.png',
                                    height: 16, width: 16, color: Colors.white),
                                const SizedBox(width: 10),
                                Text('Đã nhận',
                                    style: ACSTyphoghraphy.buttonTitle
                                        .copyWith(fontWeight: FontWeight.w400)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Text('Tên khách hàng: Uyên',
                          style: ACSTyphoghraphy.detail),
                      const Text('Số điện thoại: 1243456789',
                          style: ACSTyphoghraphy.detail),
                      const Text(
                          'Địa chỉ: 123 đường avc phường đfem quận ezdfo',
                          style: ACSTyphoghraphy.detail),
                      const Text('Thời gian dự kiến: 10h00 ngày 14/04/2022',
                          style: ACSTyphoghraphy.detail),
                    ],
                  ),
                ),
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
                      Row(
                        children: [
                          const Text('Trạng thái: ',
                              style: ACSTyphoghraphy.detail),
                          const SizedBox(width: 10),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 6, horizontal: 10),
                            decoration: BoxDecoration(
                              color: Colors.red.shade300,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Row(
                              children: [
                                Image.asset('assets/icons/error.png',
                                    height: 16, width: 16, color: Colors.white),
                                const SizedBox(width: 10),
                                Text('Đã từ chối',
                                    style: ACSTyphoghraphy.buttonTitle
                                        .copyWith(fontWeight: FontWeight.w400)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Text('Tên khách hàng: Uyên',
                          style: ACSTyphoghraphy.detail),
                      const Text('Số điện thoại: 1243456789',
                          style: ACSTyphoghraphy.detail),
                      const Text(
                          'Địa chỉ: 123 đường avc phường đfem quận ezdfo',
                          style: ACSTyphoghraphy.detail),
                      const Text('Thời gian dự kiến: 10h00 ngày 14/04/2022',
                          style: ACSTyphoghraphy.detail),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
