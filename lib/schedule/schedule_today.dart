import 'package:acs_staff/history/order_detail.dart';
import 'package:acs_staff/schedule/schedule_today.controller.dart';
import 'package:acs_staff/styles/acs_colors.dart';
import 'package:acs_staff/styles/acs_typhoghraphy.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScheduleToday extends GetWidget<ScheduleTodayController> {
  const ScheduleToday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ACSColors.background,
        appBar: AppBar(
          backgroundColor: ACSColors.primary,
          title: const Text('Current Day', style: ACSTyphoghraphy.titleAppbar),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                const SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: ACSColors.primary),
                  ),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                  margin:
                  const EdgeInsets.only(left: 16, right: 16, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Tên khách hàng: Uyên',
                          style: ACSTyphoghraphy.listTitle),
                      const SizedBox(height: 8),
                      const Text('Số điện thoại: 1243456789',
                          style: ACSTyphoghraphy.listTitle),
                      const SizedBox(height: 8),
                      const Text(
                          'Địa chỉ: 123 đường avc phường đfem quận ezdfo',
                          style: ACSTyphoghraphy.listTitle),
                      const SizedBox(height: 8),
                      const Text('Thời gian dự kiến: 10h00 ngày 14/04/2022',
                          style: ACSTyphoghraphy.listTitle),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                InkWell(
                  onTap: () {
                    Get.to(() => OrderDetailScreen());
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: ACSColors.primary),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 16),
                    margin:
                    const EdgeInsets.only(left: 16, right: 16, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Trạng thái: ',
                            style: ACSTyphoghraphy.detail,
                            children: [
                              TextSpan(
                                  text: 'Đã nhận',
                                  style: ACSTyphoghraphy.detail
                                      .copyWith(color: Colors.green)),
                            ],
                          ),
                        ),
                        const Text('Tên khách hàng: Uyên',
                            style: ACSTyphoghraphy.listTitle),
                        const SizedBox(height: 8),
                        const Text('Số điện thoại: 1243456789',
                            style: ACSTyphoghraphy.listTitle),
                        const SizedBox(height: 8),
                        const Text(
                            'Địa chỉ: 123 đường avc phường đfem quận ezdfo',
                            style: ACSTyphoghraphy.listTitle),
                        const SizedBox(height: 8),
                        const Text('Thời gian dự kiến: 10h00 ngày 14/04/2022',
                            style: ACSTyphoghraphy.listTitle),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: ACSColors.primary),
                  ),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                  margin:
                  const EdgeInsets.only(left: 16, right: 16, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Trạng thái: ',
                          style: ACSTyphoghraphy.detail,
                          children: [
                            TextSpan(
                                text: 'Đã hủy',
                                style: ACSTyphoghraphy.detail
                                    .copyWith(color: Colors.red)),
                          ],
                        ),
                      ),
                      const Text('Tên khách hàng: Uyên',
                          style: ACSTyphoghraphy.listTitle),
                      const SizedBox(height: 8),
                      const Text('Số điện thoại: 1243456789',
                          style: ACSTyphoghraphy.listTitle),
                      const SizedBox(height: 8),
                      const Text(
                          'Địa chỉ: 123 đường avc phường đfem quận ezdfo',
                          style: ACSTyphoghraphy.listTitle),
                      const SizedBox(height: 8),
                      const Text('Thời gian dự kiến: 10h00 ngày 14/04/2022',
                          style: ACSTyphoghraphy.listTitle),
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
