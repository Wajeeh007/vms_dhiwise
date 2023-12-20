import '../controller/product_list_controller.dart';
import '../models/productlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vms/core/app_export.dart';

// ignore: must_be_immutable
class ProductlistItemWidget extends StatelessWidget {
  ProductlistItemWidget(
    this.productlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductlistItemModel productlistItemModelObj;

  var controller = Get.find<ProductListController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgDummyProduct,
            height: 40.adaptSize,
            width: 40.adaptSize,
            radius: BorderRadius.circular(
              10.h,
            ),
            margin: EdgeInsets.only(bottom: 42.v),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        productlistItemModelObj.productName!.value,
                        style: CustomTextStyles.labelLargePrimarySemiBold,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Obx(
                      () => Text(
                        productlistItemModelObj.stockCount!.value,
                        style: CustomTextStyles.labelMediumSecondaryContainer,
                      ),
                    ),
                    SizedBox(height: 3.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(
                          () => Text(
                            productlistItemModelObj.category!.value,
                            style: theme.textTheme.labelMedium,
                          ),
                        ),
                        Obx(
                          () => Text(
                            productlistItemModelObj.vendorName!.value,
                            style: theme.textTheme.labelMedium,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 14.v),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 4.h,
                    vertical: 1.v,
                  ),
                  decoration: AppDecoration.fillTeal.copyWith(
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
                          color: appTheme.tealA700,
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
                            productlistItemModelObj.status!.value,
                            style: CustomTextStyles.bodySmallGray90001_1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
