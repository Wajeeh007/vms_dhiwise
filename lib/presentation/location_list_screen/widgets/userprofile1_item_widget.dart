import '../controller/location_list_controller.dart';
import '../models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vms/core/app_export.dart';
import 'package:vms/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  var controller = Get.find<LocationListController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(bottom: 11.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 45.v),
                      child: Obx(
                        () => CustomIconButton(
                          height: 36.adaptSize,
                          width: 36.adaptSize,
                          padding: EdgeInsets.all(10.h),
                          child: CustomImageView(
                            imagePath: userprofile1ItemModelObj.linkedin!.value,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 12.h,
                        top: 2.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 168.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 1.v),
                                  child: Obx(
                                    () => Text(
                                      userprofile1ItemModelObj
                                          .beverlyCenter!.value,
                                      style: theme.textTheme.titleSmall,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 2.v),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 4.h,
                                    vertical: 1.v,
                                  ),
                                  decoration: AppDecoration.fillTeal.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 8.adaptSize,
                                        width: 8.adaptSize,
                                        margin:
                                            EdgeInsets.symmetric(vertical: 2.v),
                                        decoration: BoxDecoration(
                                          color: appTheme.tealA700,
                                          borderRadius: BorderRadius.circular(
                                            4.h,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 8.h),
                                        child: Obx(
                                          () => Text(
                                            userprofile1ItemModelObj
                                                .text1!.value,
                                            style: CustomTextStyles
                                                .bodySmallGray90001_1,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8.v),
                          Row(
                            children: [
                              Obx(
                                () => Text(
                                  userprofile1ItemModelObj.islamabad!.value,
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
                                    userprofile1ItemModelObj.pakistan!.value,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 7.v),
                          Obx(
                            () => Text(
                              userprofile1ItemModelObj.address!.value,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          SizedBox(height: 6.v),
                          Obx(
                            () => Text(
                              userprofile1ItemModelObj.phoneNumber!.value,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.v),
                Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Obx(
                    () => Text(
                      userprofile1ItemModelObj.lastUpdated!.value,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 11.h,
            top: 89.v,
            bottom: 11.v,
          ),
          child: Obx(
            () => Text(
              userprofile1ItemModelObj.date!.value,
              style: CustomTextStyles.bodySmallGray90001_1,
            ),
          ),
        ),
      ],
    );
  }
}
