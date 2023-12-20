import 'controller/verification_one_controller.dart';import 'models/verification_one_model.dart';import 'package:flutter/material.dart';import 'package:vms/core/app_export.dart';import 'package:vms/widgets/custom_elevated_button.dart';
// ignore_for_file: must_be_immutable
class VerificationOnePage extends StatelessWidget {VerificationOnePage({Key? key}) : super(key: key);

VerificationOneController controller = Get.put(VerificationOneController(VerificationOneModel().obs));

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 36.v), _buildConfirmCodeSection()])))); } 
/// Section Widget
Widget _buildConfirmCodeSection() { return Padding(padding: EdgeInsets.symmetric(horizontal: 25.h), child: Column(children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_valid_till".tr, style: CustomTextStyles.bodySmallDMSansSecondaryContainer), Text("lbl_03_05".tr, style: CustomTextStyles.labelLargeDMSansSecondaryContainer)]), SizedBox(height: 36.v), CustomElevatedButton(text: "lbl_confirm_code".tr, buttonStyle: CustomButtonStyles.fillPrimaryTL18, buttonTextStyle: CustomTextStyles.titleSmallWhiteA700, onPressed: () {onTapConfirmCode();}), SizedBox(height: 18.v), Text("lbl_re_send_code".tr, style: CustomTextStyles.titleSmallGray600)])); } 
/// Navigates to the verificationScreen when the action is triggered.
onTapConfirmCode() { Get.toNamed(AppRoutes.verificationScreen, ); } 
 }
