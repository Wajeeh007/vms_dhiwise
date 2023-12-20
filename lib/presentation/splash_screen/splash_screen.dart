import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:vms/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black900,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgIsmmartEcomLogo25,
                height: 140.adaptSize,
                width: 140.adaptSize,
              ),
              SizedBox(height: 30.v),
              SizedBox(
                width: 191.h,
                child: Text(
                  "msg_ismmart_vendor".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumWhiteA700.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
