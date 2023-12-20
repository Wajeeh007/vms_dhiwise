import 'controller/set_price_controller.dart';
import 'package:flutter/material.dart';
import 'package:vms/core/app_export.dart';
import 'package:vms/widgets/custom_checkbox_button.dart';
import 'package:vms/widgets/custom_elevated_button.dart';
import 'package:vms/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SetPriceScreen extends GetWidget<SetPriceController> {
  const SetPriceScreen({Key? key})
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
              SizedBox(height: 20.v),
              Container(
                padding: EdgeInsets.all(16.h),
                decoration: AppDecoration.fillGray5001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 3.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "lbl_pricing".tr,
                        style: CustomTextStyles.titleSmallGray900_1,
                      ),
                    ),
                    SizedBox(height: 9.v),
                    Padding(
                      padding: EdgeInsets.only(right: 8.h),
                      child: _buildCompareAtPriceColumn(
                        text: "lbl_price".tr,
                        rsText: "lbl_rs".tr,
                        zeroText: "lbl_0_00".tr,
                      ),
                    ),
                    SizedBox(height: 6.v),
                    Padding(
                      padding: EdgeInsets.only(right: 8.h),
                      child: _buildCompareAtPriceColumn(
                        text: "msg_compare_at_price".tr,
                        rsText: "lbl_rs".tr,
                        zeroText: "lbl_0_00".tr,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    _buildChargeTaxCheckBox(),
                    SizedBox(height: 10.v),
                    Padding(
                      padding: EdgeInsets.only(right: 8.h),
                      child: _buildCompareAtPriceColumn(
                        text: "lbl_cost_per_item".tr,
                        rsText: "lbl_rs".tr,
                        zeroText: "lbl_0_00".tr,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    _buildProfitColumn(),
                    SizedBox(height: 6.v),
                    _buildMarginColumn(),
                  ],
                ),
              ),
              SizedBox(height: 20.v),
              CustomElevatedButton(
                text: "lbl_done".tr,
              ),
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
        SizedBox(
          width: 89.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgBars,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
              Text(
                "lbl_set_price".tr,
                style: CustomTextStyles.titleSmallPrimary,
              ),
            ],
          ),
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
  Widget _buildChargeTaxCheckBox() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Obx(
        () => CustomCheckboxButton(
          alignment: Alignment.centerLeft,
          text: "msg_charge_tax_on_this".tr,
          value: controller.chargeTaxCheckBox.value,
          padding: EdgeInsets.symmetric(vertical: 1.v),
          onChange: (value) {
            controller.chargeTaxCheckBox.value = value;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfitColumn() {
    return Padding(
      padding: EdgeInsets.only(right: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_profit".tr,
            style: CustomTextStyles.labelLargeBluegray30001,
          ),
          SizedBox(height: 6.v),
          CustomTextFormField(
            controller: controller.languageController,
            hintText: "lbl4".tr,
            textInputAction: TextInputAction.done,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMarginColumn() {
    return Padding(
      padding: EdgeInsets.only(right: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_margin".tr,
            style: CustomTextStyles.labelLargeBluegray30001,
          ),
          SizedBox(height: 4.v),
          Container(
            width: 295.h,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.outlineGray200014.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Text(
              "lbl4".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildCompareAtPriceColumn({
    required String text,
    required String rsText,
    required String zeroText,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: CustomTextStyles.labelLargeBluegray30001.copyWith(
            color: appTheme.blueGray30001,
          ),
        ),
        SizedBox(height: 4.v),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 8.v,
          ),
          decoration: AppDecoration.outlineGray200014.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Row(
            children: [
              Text(
                rsText,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: appTheme.blueGray30001,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Text(
                  zeroText,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    color: appTheme.blueGray30001,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
