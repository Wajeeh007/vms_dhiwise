import '../controller/orders_controller.dart';
import '../models/griditem_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vms/core/app_export.dart';

// ignore: must_be_immutable
class GriditemItemWidget extends StatelessWidget {
  GriditemItemWidget(
    this.griditemItemModelObj, {
    Key? key,
    this.onTapItem,
  }) : super(
          key: key,
        );

  GriditemItemModel griditemItemModelObj;

  var controller = Get.find<OrdersController>();

  VoidCallback? onTapItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapItem!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 21.v,
        ),
        decoration: AppDecoration.fillGray50.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 32.adaptSize,
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 7.v,
              ),
              decoration: AppDecoration.fillOrange.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder16,
              ),
              child: Obx(
                () => Text(
                  griditemItemModelObj.iconShapesText!.value,
                  style: CustomTextStyles.titleSmallDeeporangeA700,
                ),
              ),
            ),
            SizedBox(height: 9.v),
            Obx(
              () => Text(
                griditemItemModelObj.newOrdersText!.value,
                style: CustomTextStyles.labelLargeDeeporangeA700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
