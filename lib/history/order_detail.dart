import 'package:acs_staff/styles/acs_colors.dart';
import 'package:acs_staff/styles/acs_typhoghraphy.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderDetailScreen extends StatefulWidget {
  OrderDetailScreen({Key? key}) : super(key: key);

  @override
  State<OrderDetailScreen> createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ACSColors.background,
      appBar: AppBar(
        backgroundColor: ACSColors.primary,
        title:
            const Text('Chi tiết đơn hàng', style: ACSTyphoghraphy.titleAppbar),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                color: ACSColors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '1. Thông tin khách hàng',
                    style: ACSTyphoghraphy.confirmTitle.copyWith(
                      fontFamily: 'CrimsonPro-Bold',
                      fontSize: 20,
                      color: ACSColors.secondaryText,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Divider(color: ACSColors.background, thickness: 2),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Tên khách hàng',
                          style: ACSTyphoghraphy.title,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Chị Uyên',
                          style: ACSTyphoghraphy.detail,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Số điện thoại',
                          style: ACSTyphoghraphy.title,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          '0378285566',
                          style: ACSTyphoghraphy.detail,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Địa chỉ',
                          style: ACSTyphoghraphy.title,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Số 123 đường S11 - Phường An Lạc - Quận Bình Tân',
                          style: ACSTyphoghraphy.detail,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                color: ACSColors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '2. Nội dung sửa chữa',
                    style: ACSTyphoghraphy.confirmTitle.copyWith(
                      fontFamily: 'CrimsonPro-Bold',
                      fontSize: 20,
                      color: ACSColors.secondaryText,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Divider(color: ACSColors.background, thickness: 2),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(
                        flex: 2,
                        child: Text('Trạng thái', style: ACSTyphoghraphy.title),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text('Đang chờ xác nhận',
                            style: ACSTyphoghraphy.detail
                                .copyWith(color: Colors.blue)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Expanded(
                        flex: 2,
                        child:
                            Text('Ngày sửa chữa', style: ACSTyphoghraphy.title),
                      ),
                      Expanded(
                        flex: 2,
                        child:
                            Text('07/01/2022', style: ACSTyphoghraphy.detail),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Expanded(
                        flex: 2,
                        child:
                            Text('Tổng số máy', style: ACSTyphoghraphy.title),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text('4', style: ACSTyphoghraphy.detail),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Expanded(
                        flex: 2,
                        child: Text('Tình trạng', style: ACSTyphoghraphy.title),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Hư bộ phận bơm ga, bụi bẩn',
                          style: ACSTyphoghraphy.detail,
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Nội dung sửa chữa', style: ACSTyphoghraphy.title),
                      TextButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                              title: Text('Thêm nội dung sửa chữa'),
                              content: TextFormField(
                                minLines: 3,
                                maxLines: 5,
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text('Đóng'),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text('Xác nhận'),
                                ),
                              ],
                            ),
                          );
                        },
                        child: Text('Thêm'),
                      ),
                    ],
                  ),
                  Text(
                    '- Thay gas: 200.000 VNĐ',
                    style: ACSTyphoghraphy.appointmentDetail.copyWith(
                        fontWeight: FontWeight.w500,
                        color: ACSColors.secondaryText),
                  ),
                  Text(
                    '- Thay linh kiện: 150.000 VNĐ',
                    style: ACSTyphoghraphy.appointmentDetail.copyWith(
                        fontWeight: FontWeight.w500,
                        color: ACSColors.secondaryText),
                  ),
                  Text(
                    '- Thay bình: 200.000 VNĐ',
                    style: ACSTyphoghraphy.appointmentDetail.copyWith(
                        fontWeight: FontWeight.w500,
                        color: ACSColors.secondaryText),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: ElevatedButton(
          onPressed: () => Get.back(),
          child: const Text(
            'Hoàn thành',
            style: ACSTyphoghraphy.buttonTitle,
          ),
          style: ElevatedButton.styleFrom(
              primary: ACSColors.primary,
              padding: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
        ),
      ),
    );
  }
}
