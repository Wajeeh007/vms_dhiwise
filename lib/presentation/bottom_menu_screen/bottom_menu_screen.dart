import 'controller/bottom_menu_controller.dart';import 'package:flutter/material.dart';import 'package:vms/core/app_export.dart';import 'package:vms/core/utils/validation_functions.dart';import 'package:vms/widgets/custom_elevated_button.dart';import 'package:vms/widgets/custom_icon_button.dart';import 'package:vms/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class BottomMenuScreen extends GetWidget<BottomMenuController> {BottomMenuScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.fromLTRB(20.h, 19.v, 20.h, 20.v), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [_buildFrameRow(), SizedBox(height: 24.v), Text("lbl_option_name".tr, style: theme.textTheme.titleSmall), SizedBox(height: 8.v), _buildFrameRow2(), SizedBox(height: 18.v), Padding(padding: EdgeInsets.only(left: 16.h), child: Text("lbl_values".tr, style: theme.textTheme.titleSmall)), SizedBox(height: 9.v), _buildFrameRow3(), SizedBox(height: 9.v), Padding(padding: EdgeInsets.only(left: 16.h), child: Text("msg_add_another_value".tr, style: CustomTextStyles.bodySmallPrimary12)), SizedBox(height: 26.v), Row(children: [CustomImageView(imagePath: ImageConstant.imgPlusPrimary, height: 16.adaptSize, width: 16.adaptSize), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("msg_add_another_option".tr, style: CustomTextStyles.labelLargePrimarySemiBold))]), SizedBox(height: 24.v), CustomElevatedButton(text: "lbl_done".tr, onPressed: () {onTapDone();}), SizedBox(height: 5.v)]))))); } 
/// Section Widget
Widget _buildFrameRow() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [SizedBox(width: 84.h, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(imagePath: ImageConstant.imgBars, height: 20.adaptSize, width: 20.adaptSize), Text("lbl_variants".tr, style: CustomTextStyles.titleSmallPrimary)])), CustomImageView(imagePath: ImageConstant.imgXSecondarycontainer, height: 20.adaptSize, width: 20.adaptSize)]); } 
/// Section Widget
Widget _buildFrameRow2() { return Row(children: [CustomImageView(imagePath: ImageConstant.imgReArrange, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.symmetric(vertical: 9.v)), Expanded(child: Padding(padding: EdgeInsets.only(left: 10.h), child: CustomTextFormField(controller: controller.nameController, hintText: "msg_name_your_variant".tr, hintStyle: CustomTextStyles.bodySmall12, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;}))), Padding(padding: EdgeInsets.only(left: 10.h), child: CustomIconButton(height: 34.adaptSize, width: 34.adaptSize, padding: EdgeInsets.all(10.h), child: CustomImageView(imagePath: ImageConstant.imgThumbsUp)))]); } 
/// Section Widget
Widget _buildFrameRow3() { return Padding(padding: EdgeInsets.only(left: 16.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgReArrange, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.symmetric(vertical: 9.v)), Expanded(child: Padding(padding: EdgeInsets.only(left: 10.h), child: CustomTextFormField(controller: controller.addAValueController, hintText: "lbl_add_a_vlaue".tr, hintStyle: CustomTextStyles.bodySmall12, textInputAction: TextInputAction.done))), Padding(padding: EdgeInsets.only(left: 10.h), child: CustomIconButton(height: 34.adaptSize, width: 34.adaptSize, padding: EdgeInsets.all(10.h), child: CustomImageView(imagePath: ImageConstant.imgThumbsUp)))])); } 
/// Navigates to the createProductInventoryShippingTwoScreen when the action is triggered.
onTapDone() { Get.toNamed(AppRoutes.createProductInventoryShippingTwoScreen, ); } 
 }
