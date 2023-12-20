import 'controller/create_location_one_controller.dart';import 'package:flutter/material.dart';import 'package:vms/core/app_export.dart';import 'package:vms/widgets/app_bar/appbar_leading_image.dart';import 'package:vms/widgets/app_bar/appbar_subtitle.dart';import 'package:vms/widgets/app_bar/custom_app_bar.dart';import 'package:vms/widgets/custom_drop_down.dart';import 'package:vms/widgets/custom_elevated_button.dart';import 'package:vms/widgets/custom_text_form_field.dart';class CreateLocationOneScreen extends GetWidget<CreateLocationOneController> {const CreateLocationOneScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Container(height: 724.v, width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 23.v), child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.only(top: 1.v), child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 57.adaptSize, width: 57.adaptSize, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgImage8, height: 57.adaptSize, width: 57.adaptSize, radius: BorderRadius.circular(28.h), alignment: Alignment.center), Align(alignment: Alignment.bottomRight, child: Container(height: 15.adaptSize, width: 15.adaptSize, margin: EdgeInsets.only(right: 2.h), decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(7.h))))])), SizedBox(height: 24.v), _buildTitleColumn(), SizedBox(height: 19.v), _buildSlugColumn(), SizedBox(height: 19.v), _buildCityColumn(), SizedBox(height: 18.v), _buildAddressColumn(), SizedBox(height: 18.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_status2".tr, style: theme.textTheme.titleSmall)), SizedBox(height: 9.v), _buildPlaceholderRow()]))), _buildButtonColumn()])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftBlueGray30001, margin: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 10.v), onTap: () {onTapArrowLeft();}), title: AppbarSubtitle(text: "lbl_edit_store".tr, margin: EdgeInsets.only(left: 107.h)), styleType: Style.bgShadow); } 
/// Section Widget
Widget _buildTitleColumn() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_store_name".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), CustomTextFormField(controller: controller.nameController, hintText: "lbl_ismmart".tr)]); } 
/// Section Widget
Widget _buildSlugColumn() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_store_slug".tr, style: theme.textTheme.titleSmall), SizedBox(height: 8.v), Container(padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 7.v), decoration: AppDecoration.outlineBluegray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(mainAxisSize: MainAxisSize.max, children: [Padding(padding: EdgeInsets.only(top: 2.v), child: Text("lbl2".tr, style: CustomTextStyles.titleSmallBluegray30001)), Padding(padding: EdgeInsets.only(left: 11.h, top: 2.v), child: Text("lbl_ismmartshop".tr, style: theme.textTheme.bodyMedium))]))]); } 
/// Section Widget
Widget _buildCityColumn() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_city".tr, style: theme.textTheme.titleSmall), SizedBox(height: 8.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 10.v, 16.h, 10.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdownGray600, height: 16.adaptSize, width: 16.adaptSize)), hintText: "lbl_select_the_city".tr, items: controller.createLocationOneModelObj.value.dropdownItemList!.value, borderDecoration: DropDownStyleHelper.outlineBlueGray, onChanged: (value) {controller.onSelected(value);})]); } 
/// Section Widget
Widget _buildAddressColumn() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_address".tr, style: theme.textTheme.titleSmall), SizedBox(height: 13.v), CustomTextFormField(controller: controller.addressController, hintText: "msg_enter_your_address".tr, textInputAction: TextInputAction.done, maxLines: 9, contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v), borderDecoration: TextFormFieldStyleHelper.outlineGrayBL8, fillColor: appTheme.whiteA700)]); } 
/// Section Widget
Widget _buildPlaceholderRow() { return Container(padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 7.v), decoration: AppDecoration.outlineBluegray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [Padding(padding: EdgeInsets.only(top: 3.v), child: Text("lbl_in_process".tr, style: theme.textTheme.bodyMedium)), CustomImageView(imagePath: ImageConstant.imgArrowdownGray600, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(left: 207.h, top: 2.v, bottom: 2.v))])); } 
/// Section Widget
Widget _buildButtonColumn() { return Align(alignment: Alignment.bottomCenter, child: Column(mainAxisSize: MainAxisSize.min, children: [CustomElevatedButton(text: "lbl_save_create".tr, onPressed: () {onTapSaveCreate();}), SizedBox(height: 16.v), CustomElevatedButton(text: "lbl_discard".tr, buttonStyle: CustomButtonStyles.fillOnPrimary)])); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Navigates to the locationListScreen when the action is triggered.
onTapSaveCreate() { Get.toNamed(AppRoutes.locationListScreen, ); } 
 }
