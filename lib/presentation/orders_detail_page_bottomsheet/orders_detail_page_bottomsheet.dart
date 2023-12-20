import 'controller/orders_detail_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:vms/core/app_export.dart';

class OrdersDetailPageBottomsheet extends StatelessWidget {
  OrdersDetailPageBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  OrdersDetailPageController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return _buildBottomMenu();
  }

  /// Section Widget
  Widget _buildBottomMenu() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(20.h, 19.v, 20.h, 20.v),
      decoration: AppDecoration.outlineBlueGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 34.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgBars,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    "lbl_order_timeline".tr,
                    style: CustomTextStyles.titleSmallPrimary,
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowUpBlueGray30001,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(bottom: 34.v),
          ),
        ],
      ),
    );
  }
}
