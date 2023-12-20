import '../controller/payout_list_one_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vms/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<PayoutListOneController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: userprofileItemModelObj.userImage!.value,
            height: 48.adaptSize,
            width: 48.adaptSize,
            margin: EdgeInsets.only(bottom: 50.v),
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
                Obx(
                  () => Text(
                    userprofileItemModelObj.title!.value,
                    style: CustomTextStyles.titleSmallPrimary_1,
                  ),
                ),
                SizedBox(height: 6.v),
                Obx(
                  () => Text(
                    userprofileItemModelObj.subtitle!.value,
                    style: CustomTextStyles.labelMediumSecondaryContainer,
                  ),
                ),
                SizedBox(height: 2.v),
                Row(
                  children: [
                    Obx(
                      () => Text(
                        userprofileItemModelObj.location!.value,
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                    Container(
                      height: 4.adaptSize,
                      width: 4.adaptSize,
                      margin: EdgeInsets.only(
                        left: 10.h,
                        top: 4.v,
                        bottom: 4.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.blueGray30001,
                        borderRadius: BorderRadius.circular(
                          2.h,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Obx(
                        () => Text(
                          userprofileItemModelObj.country!.value,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3.v),
                Obx(
                  () => Text(
                    userprofileItemModelObj.address!.value,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 15.v),
                Row(
                  children: [
                    Obx(
                      () => Text(
                        userprofileItemModelObj.type!.value,
                        style: CustomTextStyles.labelMediumGray90001Bold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Obx(
                        () => Text(
                          userprofileItemModelObj.category!.value,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
