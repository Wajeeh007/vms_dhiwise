import 'controller/vendor_profile_submitted_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:vms/core/app_export.dart';
import 'package:vms/widgets/app_bar/appbar_image.dart';
import 'package:vms/widgets/app_bar/appbar_leading_image.dart';
import 'package:vms/widgets/app_bar/appbar_subtitle.dart';
import 'package:vms/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class VendorProfileSubmittedOneScreen
    extends GetWidget<VendorProfileSubmittedOneController> {
  const VendorProfileSubmittedOneScreen({Key? key})
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
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 82.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 25.h,
                right: 25.h,
                bottom: 5.v,
              ),
              child: Column(
                children: [
                  _buildPhase(),
                  SizedBox(height: 94.v),
                  Text(
                    "msg_wait_for_verification".tr,
                    style: CustomTextStyles.titleMediumGray90001,
                  ),
                  SizedBox(height: 10.v),
                  Container(
                    width: 315.h,
                    margin: EdgeInsets.symmetric(horizontal: 4.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_our".tr,
                            style: CustomTextStyles.labelLargeGray600_1,
                          ),
                          TextSpan(
                            text: "msg_vendor_management".tr,
                            style: CustomTextStyles.labelLargeBlack900,
                          ),
                          TextSpan(
                            text: "msg_will_review_your".tr,
                            style: CustomTextStyles.labelLargeGray600_1,
                          ),
                          TextSpan(
                            text: "lbl_seller_account".tr,
                            style: CustomTextStyles.labelLargeGray600_1,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 32.v),
                  SizedBox(
                    width: 325.h,
                    child: Text(
                      "msg_vendor_account_rejections".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.justify,
                      style: CustomTextStyles.labelLargeGray600.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  SizedBox(height: 9.v),
                  SizedBox(
                    width: 325.h,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_incomplete_information3".tr,
                            style: CustomTextStyles.labelLargeBold,
                          ),
                          TextSpan(
                            text: "msg_if_the_vendor_application".tr,
                            style:
                                CustomTextStyles.labelLargeGray600_1.copyWith(
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: "msg_unsatisfactory_product".tr,
                            style: CustomTextStyles.labelLargeBold,
                          ),
                          TextSpan(
                            text: "msg_the_platform_might".tr,
                            style:
                                CustomTextStyles.labelLargeGray600_1.copyWith(
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: "msg_legal_or_compliance".tr,
                            style: CustomTextStyles.labelLargeBold,
                          ),
                          TextSpan(
                            text: "msg_failure_to_comply".tr,
                            style:
                                CustomTextStyles.labelLargeGray600_1.copyWith(
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: "msg_high_competition".tr,
                            style: CustomTextStyles.labelLargeBold,
                          ),
                          TextSpan(
                            text: "msg_in_some_cases_there".tr,
                            style:
                                CustomTextStyles.labelLargeGray600_1.copyWith(
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: "msg_poor_reputation".tr,
                            style: CustomTextStyles.labelLargeBold,
                          ),
                          TextSpan(
                            text: "msg_previous_instances".tr,
                            style:
                                CustomTextStyles.labelLargeGray600_1.copyWith(
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: "msg_security_concerns".tr,
                            style: CustomTextStyles.labelLargeBold,
                          ),
                          TextSpan(
                            text: "msg_if_the_platform".tr,
                            style:
                                CustomTextStyles.labelLargeGray600_1.copyWith(
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: "msg_violation_of_platform".tr,
                            style: CustomTextStyles.labelLargeBold,
                          ),
                          TextSpan(
                            text: "msg_not_adhering_to".tr,
                            style:
                                CustomTextStyles.labelLargeGray600_1.copyWith(
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: "msg_financial_reasons".tr,
                            style: CustomTextStyles.labelLargeBold,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 55.v,
      leadingWidth: 63.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgLogo3,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 8.v,
          bottom: 8.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_ismmart".tr,
      ),
      actions: [
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 15.v,
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
      ],
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildPhase() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_vendor_profile_submitted".tr,
                  style: CustomTextStyles.titleLargeInterGray90001,
                ),
                SizedBox(height: 11.v),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Text(
                        "lbl_status".tr,
                        style: CustomTextStyles.bodyMediumGray90001,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Text(
                        "lbl_pending".tr,
                        style: CustomTextStyles.bodyMediumAmber400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 58.adaptSize,
          width: 58.adaptSize,
          margin: EdgeInsets.only(left: 13.h),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 58.adaptSize,
                  width: 58.adaptSize,
                  child: CircularProgressIndicator(
                    value: 0.5,
                    strokeWidth: 6.h,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "lbl_4_of_4".tr,
                  style: CustomTextStyles.bodyMediumPoppinsBluegray800,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
