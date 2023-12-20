import 'controller/set_variants_controller.dart';
import 'package:flutter/material.dart';
import 'package:vms/core/app_export.dart';
import 'package:vms/widgets/custom_elevated_button.dart';
import 'package:vms/widgets/custom_icon_button.dart';
import 'package:vms/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SetVariantsScreen extends GetWidget<SetVariantsController> {
  const SetVariantsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.fromLTRB(20.h, 19.v, 20.h, 20.v),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildFrameRow(),
              SizedBox(height: 24.v),
              _buildFortyFiveColumn(),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
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
                "lbl_set_variants".tr,
                style: CustomTextStyles.titleSmallPrimary,
              ),
            ),
          ],
        ),
        CustomImageView(
          imagePath: ImageConstant.imgXSecondarycontainer,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTitleColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_option_name".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 8.v),
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgReArrange,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 9.v),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: CustomTextFormField(
                  controller: controller.colorController,
                  hintText: "lbl_color".tr,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: CustomIconButton(
                height: 34.adaptSize,
                width: 34.adaptSize,
                padding: EdgeInsets.all(10.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgThumbsUp,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFortyOneColumn() {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              "lbl_values".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ),
        SizedBox(height: 9.v),
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgReArrange,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 9.v),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: CustomTextFormField(
                    controller: controller.greenController,
                    hintText: "lbl_green".tr,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: CustomIconButton(
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                  padding: EdgeInsets.all(10.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgThumbsUp,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 8.v),
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgReArrange,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 9.v),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: CustomTextFormField(
                    controller: controller.blackController,
                    hintText: "lbl_black".tr,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: CustomIconButton(
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                  padding: EdgeInsets.all(10.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgThumbsUp,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 8.v),
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgReArrange,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 9.v),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: CustomTextFormField(
                    controller: controller.redController,
                    hintText: "lbl_red".tr,
                    textInputAction: TextInputAction.done,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: CustomIconButton(
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                  padding: EdgeInsets.all(10.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgThumbsUp,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFortyFiveColumn() {
    return Column(
      children: [
        _buildTitleColumn(),
        SizedBox(height: 18.v),
        _buildFortyOneColumn(),
        SizedBox(height: 9.v),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              "msg_add_another_value".tr,
              style: CustomTextStyles.bodySmallPrimary12,
            ),
          ),
        ),
        SizedBox(height: 26.v),
        Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPlusPrimary,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "msg_add_another_option".tr,
                  style: CustomTextStyles.labelLargePrimarySemiBold,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 24.v),
        CustomElevatedButton(
          text: "lbl_done".tr,
        ),
      ],
    );
  }
}
