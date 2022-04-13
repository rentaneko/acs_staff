import 'package:acs_staff/styles/acs_colors.dart';
import 'package:acs_staff/styles/acs_typhoghraphy.dart';
import 'package:flutter/material.dart';

class OrderHistoryScreen extends StatefulWidget {
  const OrderHistoryScreen({Key? key}) : super(key: key);

  @override
  State<OrderHistoryScreen> createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ACSColors.primary,
        title:
            const Text('Lịch sử đơn hàng', style: ACSTyphoghraphy.titleAppbar),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: ACSColors.primary),
              ),
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Trạng thái: ',
                      style: ACSTyphoghraphy.detail,
                      children: [
                        TextSpan(
                            text: 'Hoàn thành',
                            style: ACSTyphoghraphy.detail
                                .copyWith(color: Colors.green)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text('Tên khách hàng: Uyên',
                      style: ACSTyphoghraphy.detail),
                  const SizedBox(height: 12),
                  const Text('Số điện thoại: 1243456789',
                      style: ACSTyphoghraphy.detail),
                  const SizedBox(height: 12),
                  const Text('Thời gian: 14/04/2022',
                      style: ACSTyphoghraphy.detail),
                  const SizedBox(height: 12),
                  RichText(
                    text: TextSpan(
                      text: 'Tổng tiền: ',
                      style: ACSTyphoghraphy.detail,
                      children: [
                        TextSpan(
                            text: '300.000 VNĐ',
                            style: ACSTyphoghraphy.detail
                                .copyWith(color: Colors.red)),
                      ],
                    ),
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
              margin: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
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
                  const SizedBox(height: 12),
                  const Text('Tên khách hàng: Uyên',
                      style: ACSTyphoghraphy.detail),
                  const SizedBox(height: 12),
                  const Text('Số điện thoại: 1243456789',
                      style: ACSTyphoghraphy.detail),
                  const SizedBox(height: 12),
                  const Text('Thời gian: 14/04/2022',
                      style: ACSTyphoghraphy.detail),
                  const SizedBox(height: 12),
                  RichText(
                    text: TextSpan(
                      text: 'Tổng tiền: ',
                      style: ACSTyphoghraphy.detail,
                      children: [
                        TextSpan(
                            text: '150.000 VNĐ',
                            style: ACSTyphoghraphy.detail
                                .copyWith(color: Colors.green)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
