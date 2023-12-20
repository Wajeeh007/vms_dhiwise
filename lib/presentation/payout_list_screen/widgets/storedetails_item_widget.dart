import '../controller/payout_list_controller.dart';
import '../models/storedetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vms/core/app_export.dart';

// ignore: must_be_immutable
class StoredetailsItemWidget extends StatelessWidget {
  StoredetailsItemWidget(
    this.storedetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  StoredetailsItemModel storedetailsItemModelObj;

  var controller = Get.find<PayoutListController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: storedetailsItemModelObj.storeImage!.value,
            height: 48.adaptSize,
            width: 48.adaptSize,
            margin: EdgeInsets.only(bottom: 54.v),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(
                      () => Text(
                        storedetailsItemModelObj.storeName!.value,
                        style: CustomTextStyles.titleSmallPrimary_1,
                      ),
                    ),
                    Obx(
                      () => Text(
                        storedetailsItemModelObj.storePrice!.value,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.v),
                Obx(
                  () => Text(
                    storedetailsItemModelObj.vendorName!.value,
                    style: CustomTextStyles.labelMediumSecondaryContainer,
                  ),
                ),
                SizedBox(height: 2.v),
                Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Row(
                    children: [
                      Obx(
                        () => Text(
                          storedetailsItemModelObj.paymentMethod!.value,
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 13.h),
                        child: Obx(
                          () => Text(
                            storedetailsItemModelObj.bankName!.value,
                            style: theme.textTheme.labelMedium,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4.v),
                Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Obx(
                    () => Text(
                      storedetailsItemModelObj.expiryDate!.value,
                      style: theme.textTheme.labelMedium,
                    ),
                  ),
                ),
                SizedBox(height: 14.v),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 4.h,
                    vertical: 1.v,
                  ),
                  decoration: AppDecoration.fillBlue.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 8.adaptSize,
                        width: 8.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 2.v),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8.h,
                          right: 4.h,
                        ),
                        child: Obx(
                          () => Text(
                            storedetailsItemModelObj.paymentStatus!.value,
                            style: CustomTextStyles.bodySmallPrimary_1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
