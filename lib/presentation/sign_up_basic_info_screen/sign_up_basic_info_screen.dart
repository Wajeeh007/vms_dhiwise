import 'controller/sign_up_basic_info_controller.dart';import 'package:country_pickers/country.dart';import 'package:flutter/material.dart';import 'package:vms/core/app_export.dart';import 'package:vms/core/utils/validation_functions.dart';import 'package:vms/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:vms/widgets/app_bar/appbar_title.dart';import 'package:vms/widgets/app_bar/custom_app_bar.dart';import 'package:vms/widgets/custom_checkbox_button.dart';import 'package:vms/widgets/custom_drop_down.dart';import 'package:vms/widgets/custom_elevated_button.dart';import 'package:vms/widgets/custom_outlined_button.dart';import 'package:vms/widgets/custom_phone_number.dart';import 'package:vms/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class SignUpBasicInfoScreen extends GetWidget<SignUpBasicInfoController> {SignUpBasicInfoScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Form(key: _formKey, child: SingleChildScrollView(padding: EdgeInsets.only(top: 46.v), child: Padding(padding: EdgeInsets.only(left: 25.h, right: 25.h, bottom: 5.v), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Text("msg_create_an_account".tr, style: CustomTextStyles.titleLargeInterGray90001)), SizedBox(height: 13.v), Align(alignment: Alignment.centerLeft, child: Text("msg_get_onboard_as_a".tr, style: theme.textTheme.bodyMedium)), SizedBox(height: 36.v), _buildInputField1(), SizedBox(height: 18.v), _buildInputField2(), SizedBox(height: 18.v), _buildInputField3(), SizedBox(height: 18.v), _buildInputField5(), SizedBox(height: 18.v), _buildInputField6(), SizedBox(height: 18.v), _buildInputField7(), SizedBox(height: 18.v), _buildInputField8(), SizedBox(height: 18.v), _buildFileUpload1(), SizedBox(height: 18.v), _buildFileUpload2(), SizedBox(height: 16.v), _buildCheckBox(), SizedBox(height: 30.v), CustomElevatedButton(text: "lbl_create_account".tr, buttonStyle: CustomButtonStyles.fillPrimaryTL18, buttonTextStyle: CustomTextStyles.titleSmallWhiteA700, onPressed: () {onTapCreateAccount();}), SizedBox(height: 48.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("msg_already_have_an".tr, style: theme.textTheme.bodyMedium), GestureDetector(onTap: () {onTapTxtLogin();}, child: Padding(padding: EdgeInsets.only(left: 4.h), child: Text("lbl_login".tr, style: CustomTextStyles.titleSmallBold)))])])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 82.v, leadingWidth: 60.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 28.h, top: 34.v, bottom: 16.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarTitle(text: "lbl_sign_up".tr, margin: EdgeInsets.only(top: 37.v, bottom: 14.v)), styleType: Style.bgShadow_1); } 
/// Section Widget
Widget _buildInputField1() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_full_name".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), CustomTextFormField(controller: controller.fullNameController, hintText: "lbl_ashar_atique".tr, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 10.v, 10.h, 10.v), child: CustomImageView(imagePath: ImageConstant.imgUserBlueGray30001, height: 16.adaptSize, width: 16.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 37.v), contentPadding: EdgeInsets.only(top: 10.v, right: 30.h, bottom: 10.v))]); } 
/// Section Widget
Widget _buildInputField2() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_email".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), CustomTextFormField(controller: controller.emailController, hintText: "msg_asha_iq11_gmail_com".tr, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 10.v, 10.h, 10.v), child: CustomImageView(imagePath: ImageConstant.imgLock, height: 16.adaptSize, width: 16.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 37.v), contentPadding: EdgeInsets.only(top: 10.v, right: 30.h, bottom: 10.v))]); } 
/// Section Widget
Widget _buildInputField3() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_phone_number".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), Obx(() => CustomPhoneNumber(country: controller.selectedCountry.value, controller: controller.phoneNumberController, onTap: (Country value) {controller.selectedCountry.value = value;}))]); } 
/// Section Widget
Widget _buildInputField5() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_gender".tr, style: CustomTextStyles.titleSmallGray900_1), SizedBox(height: 9.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 10.v, 16.h, 10.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdownBlueGray30001, height: 16.adaptSize, width: 16.adaptSize)), hintText: "lbl_select_one".tr, items: controller.signUpBasicInfoModelObj.value.dropdownItemList!.value, onChanged: (value) {controller.onSelected(value);})]); } 
/// Section Widget
Widget _buildInputField6() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_cnic_no".tr, style: CustomTextStyles.titleSmallGray900_1), SizedBox(height: 9.v), CustomTextFormField(controller: controller.cNICNovalueController, hintText: "lbl_35404_4770789_7".tr)]); } 
/// Section Widget
Widget _buildInputField7() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_password".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), Obx(() => CustomTextFormField(controller: controller.passwordController, hintText: "lbl_hello_456".tr, textInputType: TextInputType.visiblePassword, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 10.v, 10.h, 10.v), child: CustomImageView(imagePath: ImageConstant.imgLockBlueGray30001, height: 16.adaptSize, width: 16.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 37.v), suffix: InkWell(onTap: () {controller.isShowPassword.value = !controller.isShowPassword.value;}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 10.v, 16.h, 10.v), child: CustomImageView(imagePath: ImageConstant.imgEye, height: 16.adaptSize, width: 16.adaptSize))), suffixConstraints: BoxConstraints(maxHeight: 37.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: controller.isShowPassword.value, contentPadding: EdgeInsets.symmetric(vertical: 10.v)))]); } 
/// Section Widget
Widget _buildInputField8() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_confirm_password".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), Obx(() => CustomTextFormField(controller: controller.confirmpasswordController, hintText: "lbl".tr, textInputType: TextInputType.visiblePassword, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 10.v, 10.h, 10.v), child: CustomImageView(imagePath: ImageConstant.imgLockBlueGray30001, height: 16.adaptSize, width: 16.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 37.v), suffix: InkWell(onTap: () {controller.isShowPassword1.value = !controller.isShowPassword1.value;}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 10.v, 16.h, 10.v), child: CustomImageView(imagePath: ImageConstant.imgEyeslashoutline, height: 16.adaptSize, width: 16.adaptSize))), suffixConstraints: BoxConstraints(maxHeight: 37.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: controller.isShowPassword1.value, contentPadding: EdgeInsets.symmetric(vertical: 10.v)))]); } 
/// Section Widget
Widget _buildFileUpload1() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_cnic_front".tr, style: CustomTextStyles.titleSmallGray900_1), SizedBox(height: 13.v), Row(children: [CustomOutlinedButton(width: 115.h, text: "lbl_choose_file".tr), CustomTextFormField(width: 210.h, controller: controller.nofilechosenvalueController, hintText: "lbl_no_file_chosen".tr, hintStyle: CustomTextStyles.bodyMediumGray90001, borderDecoration: TextFormFieldStyleHelper.outlineGrayLR8)])]); } 
/// Section Widget
Widget _buildFileUpload2() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_cnic_back".tr, style: CustomTextStyles.titleSmallGray900_1), SizedBox(height: 13.v), Row(children: [CustomOutlinedButton(width: 115.h, text: "lbl_choose_file".tr), CustomTextFormField(width: 210.h, controller: controller.nofilechosenvalueController1, hintText: "lbl_no_file_chosen".tr, hintStyle: CustomTextStyles.bodyMediumGray90001, textInputAction: TextInputAction.done, borderDecoration: TextFormFieldStyleHelper.outlineGrayLR8)])]); } 
/// Section Widget
Widget _buildCheckBox() { return Obx(() => CustomCheckboxButton(text: "msg_by_creating_your".tr, isExpandedText: true, value: controller.checkBox.value, textStyle: CustomTextStyles.bodySmall12, onChange: (value) {controller.checkBox.value = value;})); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Navigates to the signUpStoreInfoTabContainerScreen when the action is triggered.
onTapCreateAccount() { Get.toNamed(AppRoutes.signUpStoreInfoTabContainerScreen, ); } 
/// Navigates to the loginScreen when the action is triggered.
onTapTxtLogin() { Get.toNamed(AppRoutes.loginScreen, ); } 
 }