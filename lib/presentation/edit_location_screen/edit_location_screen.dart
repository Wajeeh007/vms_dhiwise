import 'controller/edit_location_controller.dart';import 'package:flutter/material.dart';import 'package:vms/core/app_export.dart';import 'package:vms/widgets/app_bar/appbar_leading_image.dart';import 'package:vms/widgets/app_bar/appbar_subtitle.dart';import 'package:vms/widgets/app_bar/custom_app_bar.dart';import 'package:vms/widgets/custom_drop_down.dart';import 'package:vms/widgets/custom_elevated_button.dart';import 'package:vms/widgets/custom_text_form_field.dart';class EditLocationScreen extends GetWidget<EditLocationController> {const EditLocationScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 26.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 5.v), child: Column(children: [_buildEditLocationTitle(), SizedBox(height: 19.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_country".tr, style: theme.textTheme.titleSmall)), SizedBox(height: 8.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 10.v, 16.h, 10.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdownGray600, height: 16.adaptSize, width: 16.adaptSize)), hintText: "lbl_pakistan".tr, hintStyle: CustomTextStyles.bodyMediumGray600, items: controller.editLocationModelObj.value.dropdownItemList!.value, borderDecoration: DropDownStyleHelper.outlineBlueGray, onChanged: (value) {controller.onSelected(value);}), SizedBox(height: 19.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_city".tr, style: theme.textTheme.titleSmall)), SizedBox(height: 8.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 10.v, 16.h, 10.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdownGray600, height: 16.adaptSize, width: 16.adaptSize)), hintText: "msg_islamabad_federal".tr, hintStyle: CustomTextStyles.bodyMediumGray600, items: controller.editLocationModelObj.value.dropdownItemList1!.value, borderDecoration: DropDownStyleHelper.outlineBlueGray, onChanged: (value) {controller.onSelected1(value);}), SizedBox(height: 18.v), _buildEditLocationDescription(), SizedBox(height: 18.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_status2".tr, style: theme.textTheme.titleSmall)), SizedBox(height: 9.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 10.v, 16.h, 10.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdownGray600, height: 16.adaptSize, width: 16.adaptSize)), hintText: "lbl_in_process".tr, items: controller.editLocationModelObj.value.dropdownItemList2!.value, borderDecoration: DropDownStyleHelper.outlineBlueGray, onChanged: (value) {controller.onSelected2(value);}), SizedBox(height: 18.v), _buildEditLocationCreatedAt(), SizedBox(height: 19.v), _buildEditLocationUpdatedAt()]))))])), bottomNavigationBar: _buildUpdateSave())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftBlueGray30001, margin: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 10.v), onTap: () {onTapArrowLeft();}), title: AppbarSubtitle(text: "lbl_edit_location".tr, margin: EdgeInsets.only(left: 92.h)), styleType: Style.bgShadow); } 
/// Section Widget
Widget _buildEditLocationTitle() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_name".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), CustomTextFormField(controller: controller.nameController, hintText: "msg_beverly_center".tr, hintStyle: CustomTextStyles.bodyMediumGray600)]); } 
/// Section Widget
Widget _buildEditLocationDescription() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_address".tr, style: theme.textTheme.titleSmall), SizedBox(height: 13.v), CustomTextFormField(controller: controller.addressController, hintText: "msg_2118_g_8_1_islamabad2".tr, hintStyle: CustomTextStyles.bodyMediumGray600, maxLines: 9, contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v), borderDecoration: TextFormFieldStyleHelper.outlineGrayBL8, fillColor: appTheme.whiteA700)]); } 
/// Section Widget
Widget _buildEditLocationCreatedAt() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_created_at".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), CustomTextFormField(controller: controller.monthController, hintText: "lbl_april_23_2023".tr, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 9.v, 8.h, 9.v), child: CustomImageView(imagePath: ImageConstant.imgCalendarmonth, height: 18.adaptSize, width: 18.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 37.v), contentPadding: EdgeInsets.only(top: 10.v, right: 30.h, bottom: 10.v))]); } 
/// Section Widget
Widget _buildEditLocationUpdatedAt() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_updated_at".tr, style: theme.textTheme.titleSmall), SizedBox(height: 8.v), CustomTextFormField(controller: controller.dateController, hintText: "lbl_april_25_2023".tr, textInputAction: TextInputAction.done, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 9.v, 8.h, 9.v), child: CustomImageView(imagePath: ImageConstant.imgCalendarmonth, height: 18.adaptSize, width: 18.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 37.v), contentPadding: EdgeInsets.only(top: 10.v, right: 30.h, bottom: 10.v))]); } 
/// Section Widget
Widget _buildUpdateSave() { return CustomElevatedButton(text: "lbl_update_save".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v)); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }