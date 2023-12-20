import '../controller/store_list_controller.dart';
import '../models/createcollectionlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vms/core/app_export.dart';

// ignore: must_be_immutable
class CreatecollectionlistItemWidget extends StatelessWidget {
  CreatecollectionlistItemWidget(
    this.createcollectionlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CreatecollectionlistItemModel createcollectionlistItemModelObj;

  var controller = Get.find<StoreListController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.fillGray10002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          Obx(
            () => CustomImageView(
              imagePath:
                  createcollectionlistItemModelObj.collectionImage!.value,
              height: 38.adaptSize,
              width: 38.adaptSize,
              radius: BorderRadius.circular(
                8.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 12.v,
              bottom: 12.v,
            ),
            child: Obx(
              () => Text(
                createcollectionlistItemModelObj.collectionName!.value,
                style: CustomTextStyles.labelMediumGray90001Bold,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgNotification,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(
              top: 11.v,
              right: 10.h,
              bottom: 11.v,
            ),
          ),
        ],
      ),
    );
  }
}
