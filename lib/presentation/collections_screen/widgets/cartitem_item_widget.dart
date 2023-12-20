import '../controller/collections_controller.dart';
import '../models/cartitem_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vms/core/app_export.dart';

// ignore: must_be_immutable
class CartitemItemWidget extends StatelessWidget {
  CartitemItemWidget(
    this.cartitemItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CartitemItemModel cartitemItemModelObj;

  var controller = Get.find<CollectionsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
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
            margin: EdgeInsets.only(bottom: 47.v),
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
                  Obx(
                    () => Text(
                      cartitemItemModelObj.title!.value,
                      style: CustomTextStyles.titleSmallPrimaryContainer,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Obx(
                    () => Text(
                      cartitemItemModelObj.productCount!.value,
                      style: CustomTextStyles.bodySmall12,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Obx(
                    () => Text(
                      cartitemItemModelObj.tag1!.value,
                      style: CustomTextStyles.bodySmall12,
                    ),
                  ),
                  SizedBox(height: 3.v),
                  Obx(
                    () => Text(
                      cartitemItemModelObj.tag2!.value,
                      style: CustomTextStyles.bodySmall12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
