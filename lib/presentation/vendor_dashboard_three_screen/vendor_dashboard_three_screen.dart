import 'controller/vendor_dashboard_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:vms/core/app_export.dart';
import 'package:vms/widgets/app_bar/appbar_image.dart';
import 'package:vms/widgets/app_bar/appbar_subtitle.dart';
import 'package:vms/widgets/app_bar/appbar_trailing_image.dart';
import 'package:vms/widgets/app_bar/custom_app_bar.dart';
import 'package:vms/widgets/custom_bottom_bar.dart';
import 'package:vms/widgets/custom_drop_down.dart';
import 'package:vms/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class VendorDashboardThreeScreen
    extends GetWidget<VendorDashboardThreeController> {
  const VendorDashboardThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 14.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 7.h,
                      right: 7.h,
                      bottom: 5.v,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.h,
                      vertical: 16.v,
                    ),
                    decoration: AppDecoration.shadow.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 2.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              Text(
                                "msg_welcome_al_jannat".tr,
                                style: CustomTextStyles.titleSmallGray900,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgInfo,
                                height: 12.adaptSize,
                                width: 12.adaptSize,
                                margin: EdgeInsets.only(
                                  left: 6.h,
                                  top: 2.v,
                                  bottom: 2.v,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 12.v),
                        _buildHeading(),
                        SizedBox(height: 12.v),
                        _buildCard(),
                        SizedBox(height: 24.v),
                        _buildCharts(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 7.h),
          child: _buildBottomBar(),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: Container(
        margin: EdgeInsets.only(
          left: 24.h,
          top: 10.v,
          bottom: 10.v,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 3.h,
          vertical: 6.v,
        ),
        decoration: AppDecoration.fillWhiteA,
        child: AppbarImage(
          imagePath: ImageConstant.imgMegaphone,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_al_jannat_mall".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgBell,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 10.v,
          ),
        ),
      ],
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildHeading() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 1.v),
      decoration: AppDecoration.outlineGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 16.v),
            child: CustomDropDown(
              width: 107.h,
              icon: Container(
                margin: EdgeInsets.only(left: 6.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgChevrondown,
                  height: 10.adaptSize,
                  width: 10.adaptSize,
                ),
              ),
              hintText: "lbl_30_june_2021".tr,
              hintStyle: CustomTextStyles.titleSmallGray60001,
              items: controller
                  .vendorDashboardThreeModelObj.value.dropdownItemList!.value,
              onChanged: (value) {
                controller.onSelected(value);
              },
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 16.v),
            child: Text(
              "lbl_progress_report".tr,
              style: CustomTextStyles.labelLargeErrorContainer,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgChevronRight,
            height: 10.adaptSize,
            width: 10.adaptSize,
            margin: EdgeInsets.only(
              left: 6.h,
              top: 19.v,
              bottom: 3.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderItems() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "lbl_total_orders".tr,
                  style: CustomTextStyles.bodySmallGray6000112,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgLink,
                  height: 10.adaptSize,
                  width: 10.adaptSize,
                  margin: EdgeInsets.only(
                    left: 6.h,
                    top: 2.v,
                    bottom: 2.v,
                  ),
                ),
              ],
            ),
            Text(
              "lbl_77".tr,
              style: CustomTextStyles.bodySmallGray6000112,
            ),
          ],
        ),
        SizedBox(height: 13.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 6.h),
              child: _buildNewOrderItem(
                textLabel: "lbl_5".tr,
                textLabel1: "lbl_order_issue".tr,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.h),
              child: _buildNewOrderItem(
                textLabel: "lbl_3".tr,
                textLabel1: "lbl_new_order".tr,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: _buildNewOrderItem(
                textLabel: "lbl_18".tr,
                textLabel1: "lbl_in_progress".tr,
              ),
            ),
          ],
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildShowMoreDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "msg_show_more_details".tr,
              style: CustomTextStyles.bodySmallGray6000112,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgChevronUpOutline,
              height: 8.adaptSize,
              width: 8.adaptSize,
              margin: EdgeInsets.only(
                left: 6.h,
                top: 3.v,
                bottom: 3.v,
              ),
            ),
          ],
        ),
        SizedBox(height: 13.v),
        Container(
          decoration: AppDecoration.outlineGray200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 12.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 3.v),
                    child: Text(
                      "lbl_total_sales".tr,
                      style: CustomTextStyles.labelLargeGray60001,
                    ),
                  ),
                  CustomElevatedButton(
                    height: 22.v,
                    width: 66.h,
                    text: "lbl_78".tr,
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 4.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowupoutline,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.fillTeal,
                    buttonTextStyle: CustomTextStyles.bodySmallTeal900,
                  ),
                ],
              ),
              SizedBox(height: 12.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 3.v),
                    child: Text(
                      "lbl_total_products".tr,
                      style: CustomTextStyles.labelLargeGray60001,
                    ),
                  ),
                  CustomElevatedButton(
                    height: 22.v,
                    width: 32.h,
                    text: "lbl_5".tr,
                    buttonStyle: CustomButtonStyles.fillGray,
                    buttonTextStyle: CustomTextStyles.bodySmallGray6000112,
                  ),
                ],
              ),
              SizedBox(height: 12.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 3.v),
                    child: Text(
                      "lbl_total_customers".tr,
                      style: CustomTextStyles.labelLargeGray60001,
                    ),
                  ),
                  CustomElevatedButton(
                    height: 22.v,
                    width: 40.h,
                    text: "lbl_44".tr,
                    buttonStyle: CustomButtonStyles.fillGray,
                    buttonTextStyle: CustomTextStyles.bodySmallGray6000112,
                  ),
                ],
              ),
              SizedBox(height: 12.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 3.v),
                    child: Text(
                      "lbl_total_revenue".tr,
                      style: CustomTextStyles.labelLargeGray60001,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgLink,
                    height: 10.adaptSize,
                    width: 10.adaptSize,
                    margin: EdgeInsets.only(
                      left: 6.h,
                      top: 6.v,
                      bottom: 6.v,
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 98.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.fillGray100.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder4,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child: Text(
                            "lbl_104_000".tr,
                            style: CustomTextStyles.bodySmallGray6000112,
                          ),
                        ),
                        Text(
                          "lbl_pkr".tr,
                          style: CustomTextStyles.bodySmallGray6000112,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCard() {
    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: AppDecoration.fillGray5001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildOrderItems(),
          SizedBox(height: 13.v),
          _buildShowMoreDetails(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCharts() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 25.v,
      ),
      decoration: AppDecoration.shadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_total_earning".tr,
                style: CustomTextStyles.titleSmallGray900,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgInfo,
                height: 12.adaptSize,
                width: 12.adaptSize,
                margin: EdgeInsets.only(
                  left: 6.h,
                  bottom: 4.v,
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgArrowDownToBracket,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.only(bottom: 2.v),
              ),
            ],
          ),
          SizedBox(height: 24.v),
          SizedBox(
            height: 222.v,
            width: 264.h,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 222.v,
                    width: 264.h,
                    padding: EdgeInsets.symmetric(horizontal: 21.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 222.adaptSize,
                            width: 222.adaptSize,
                            child: CircularProgressIndicator(
                              value: 0.5,
                              backgroundColor:
                                  theme.colorScheme.onPrimaryContainer,
                              color: theme.colorScheme.errorContainer,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 222.adaptSize,
                            width: 222.adaptSize,
                            child: CircularProgressIndicator(
                              value: 0.5,
                              backgroundColor: theme.colorScheme.errorContainer,
                              color: appTheme.deepOrange200,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 222.adaptSize,
                            width: 222.adaptSize,
                            child: CircularProgressIndicator(
                              value: 0.5,
                              backgroundColor: theme.colorScheme.errorContainer,
                              color: appTheme.pink400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 98.h,
                      top: 70.v,
                      right: 98.h,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "lbl_104_000".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 6.v),
                        Text(
                          "lbl_pkr".tr,
                          style: CustomTextStyles.titleSmallGray60001Bold,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 8.adaptSize,
                width: 8.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 3.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.errorContainer,
                  borderRadius: BorderRadius.circular(
                    4.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "lbl_affiliate_sold".tr,
                  style: CustomTextStyles.bodySmallGray6000112,
                ),
              ),
              Container(
                height: 8.adaptSize,
                width: 8.adaptSize,
                margin: EdgeInsets.only(
                  left: 6.h,
                  top: 3.v,
                  bottom: 3.v,
                ),
                decoration: BoxDecoration(
                  color: theme.colorScheme.onPrimaryContainer,
                  borderRadius: BorderRadius.circular(
                    4.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "lbl_direct_sold".tr,
                  style: CustomTextStyles.bodySmallGray6000112,
                ),
              ),
            ],
          ),
          SizedBox(height: 9.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 8.adaptSize,
                width: 8.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 3.v),
                decoration: BoxDecoration(
                  color: appTheme.deepOrange200,
                  borderRadius: BorderRadius.circular(
                    4.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "lbl_cancelled".tr,
                  style: CustomTextStyles.bodySmallGray6000112,
                ),
              ),
              Container(
                height: 8.adaptSize,
                width: 8.adaptSize,
                margin: EdgeInsets.only(
                  left: 6.h,
                  top: 3.v,
                  bottom: 3.v,
                ),
                decoration: BoxDecoration(
                  color: appTheme.pink400,
                  borderRadius: BorderRadius.circular(
                    4.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "lbl_items_returned".tr,
                  style: CustomTextStyles.bodySmallGray6000112,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }

  /// Common widget
  Widget _buildNewOrderItem({
    required String textLabel,
    required String textLabel1,
  }) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 13.h,
            vertical: 12.v,
          ),
          decoration: AppDecoration.fillGray10003.copyWith(
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
                decoration: AppDecoration.fillCyan.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder16,
                ),
                child: Text(
                  textLabel,
                  style: CustomTextStyles.titleSmallCyan800.copyWith(
                    color: appTheme.cyan800,
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              Text(
                textLabel1,
                style: CustomTextStyles.labelLargeCyan800.copyWith(
                  color: appTheme.cyan800,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
