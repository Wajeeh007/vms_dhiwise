import '../controller/orders_detail_page_one_controller.dart';
import '../models/ordertracking_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vms/core/app_export.dart';
import 'package:vms/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class OrdertrackingItemWidget extends StatelessWidget {
  OrdertrackingItemWidget(
    this.ordertrackingItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OrdertrackingItemModel ordertrackingItemModelObj;

  var controller = Get.find<OrdersDetailPageOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.outlineBlack9001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  ordertrackingItemModelObj.orderTrackingId!.value,
                  style: CustomTextStyles.labelLargeGray600SemiBold,
                ),
              ),
              Obx(
                () => Text(
                  ordertrackingItemModelObj
                      .twentyFiveMillionEightHundredT!.value,
                  style: CustomTextStyles.labelLargePrimary.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 4.h),
              decoration: AppDecoration.fillDeepOrange.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 4.v),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        4.h,
                      ),
                      border: Border.all(
                        color: theme.colorScheme.onError,
                        width: 1.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 2.v,
                      right: 4.h,
                    ),
                    child: Obx(
                      () => Text(
                        ordertrackingItemModelObj.pending!.value,
                        style: CustomTextStyles.bodySmallGray90001_1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgDummyProduct,
                height: 40.adaptSize,
                width: 40.adaptSize,
                radius: BorderRadius.circular(
                  10.h,
                ),
                margin: EdgeInsets.only(bottom: 12.v),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 2.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        ordertrackingItemModelObj.axelArigato!.value,
                        style: CustomTextStyles.labelLargePrimaryContainer,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Obx(
                      () => Text(
                        ordertrackingItemModelObj.iSMMARTOriginals!.value,
                        style: CustomTextStyles.bodySmallDMSansGray90001,
                      ),
                    ),
                    SizedBox(height: 1.v),
                    Obx(
                      () => Text(
                        ordertrackingItemModelObj.sKUACamera!.value,
                        style: CustomTextStyles.bodySmallDMSans,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  top: 2.v,
                  bottom: 35.v,
                ),
                child: Obx(
                  () => Text(
                    ordertrackingItemModelObj.rsCounter!.value,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 56.h),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Obx(
                      () => Text(
                        ordertrackingItemModelObj.rsCounter1!.value,
                        style: CustomTextStyles.labelLargeBluegray30001,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Obx(
                      () => Text(
                        ordertrackingItemModelObj.xCounter!.value,
                        style: CustomTextStyles.labelLargeBluegray30001,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 38.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgDummyProduct,
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          radius: BorderRadius.circular(
                            10.h,
                          ),
                          margin: EdgeInsets.only(bottom: 12.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Obx(
                                () => Text(
                                  ordertrackingItemModelObj.nikeCounter!.value,
                                  style: CustomTextStyles
                                      .labelLargePrimaryContainer,
                                ),
                              ),
                              SizedBox(height: 6.v),
                              Obx(
                                () => Text(
                                  ordertrackingItemModelObj
                                      .iSMMARTOriginals1!.value,
                                  style:
                                      CustomTextStyles.bodySmallDMSansGray90001,
                                ),
                              ),
                              SizedBox(height: 1.v),
                              Obx(
                                () => Text(
                                  ordertrackingItemModelObj.sKUACamera1!.value,
                                  style: CustomTextStyles.bodySmallDMSans,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 10.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 1.v),
                              child: Obx(
                                () => Text(
                                  ordertrackingItemModelObj.rsCounter2!.value,
                                  style:
                                      CustomTextStyles.labelLargeBluegray30001,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Obx(
                                () => Text(
                                  ordertrackingItemModelObj.xCounter1!.value,
                                  style:
                                      CustomTextStyles.labelLargeBluegray30001,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.v),
                    Row(
                      children: [
                        Obx(
                          () => Text(
                            ordertrackingItemModelObj.subTotal!.value,
                            style: CustomTextStyles.labelMediumGray90001,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Obx(
                            () => Text(
                              ordertrackingItemModelObj.itemsCounter!.value,
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 9.v),
                    SizedBox(
                      width: 162.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(
                            () => Text(
                              ordertrackingItemModelObj.shippingFee!.value,
                              style: CustomTextStyles.labelMediumGray90001,
                            ),
                          ),
                          Obx(
                            () => Text(
                              ordertrackingItemModelObj.standardKg!.value,
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Obx(
                      () => Text(
                        ordertrackingItemModelObj.promoDiscount!.value,
                        style: CustomTextStyles.labelMediumGray90001,
                      ),
                    ),
                    SizedBox(height: 9.v),
                    Obx(
                      () => Text(
                        ordertrackingItemModelObj.totalAmount!.value,
                        style: CustomTextStyles.labelMediumGray90001,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Obx(
                      () => Text(
                        ordertrackingItemModelObj.rsCounter3!.value,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    SizedBox(height: 79.v),
                    Obx(
                      () => Text(
                        ordertrackingItemModelObj.rsCounter4!.value,
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Obx(
                      () => Text(
                        ordertrackingItemModelObj.rsCounter5!.value,
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                    SizedBox(height: 9.v),
                    Obx(
                      () => Text(
                        ordertrackingItemModelObj.rsCounter6!.value,
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                    SizedBox(height: 9.v),
                    Obx(
                      () => Text(
                        ordertrackingItemModelObj.rsCounter7!.value,
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                    SizedBox(height: 8.v),
                    CustomElevatedButton(
                      height: 29.v,
                      width: 81.h,
                      text: "lbl_fulfill_item".tr,
                      buttonTextStyle: CustomTextStyles.labelMediumWhiteA700,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
