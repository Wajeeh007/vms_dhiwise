import '../location_list_screen/widgets/userprofile1_item_widget.dart';import 'controller/location_list_controller.dart';import 'models/userprofile1_item_model.dart';import 'package:flutter/material.dart';import 'package:vms/core/app_export.dart';import 'package:vms/widgets/app_bar/appbar_leading_image.dart';import 'package:vms/widgets/app_bar/appbar_subtitle.dart';import 'package:vms/widgets/app_bar/custom_app_bar.dart';import 'package:vms/widgets/custom_elevated_button.dart';class LocationListScreen extends GetWidget<LocationListController> {const LocationListScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.all(24.h), child: Column(children: [_buildCreateCollection(), SizedBox(height: 16.v), _buildTen(), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftBlueGray30001, margin: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 10.v), onTap: () {onTapArrowLeft();}), title: AppbarSubtitle(text: "lbl_location_list".tr, margin: EdgeInsets.only(left: 94.h)), styleType: Style.bgShadow); } 
/// Section Widget
Widget _buildCreateCollection() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomElevatedButton(width: 141.h, text: "lbl_add_location".tr, leftIcon: Container(margin: EdgeInsets.only(right: 8.h), child: CustomImageView(imagePath: ImageConstant.imgPlus, height: 16.adaptSize, width: 16.adaptSize)), onPressed: () {onTapAddLocation();}), Container(padding: EdgeInsets.all(9.h), decoration: AppDecoration.outlineGray200012.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgSearch, height: 16.adaptSize, width: 16.adaptSize), CustomImageView(imagePath: ImageConstant.imgIconsFilterList, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(left: 10.h))]))]); } 
/// Section Widget
Widget _buildTen() { return Column(children: [Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("lbl_1_3".tr, style: CustomTextStyles.bodySmall12), Padding(padding: EdgeInsets.only(left: 6.h), child: Text("lbl_of_3".tr, style: CustomTextStyles.bodySmall12)), Spacer(), CustomImageView(imagePath: ImageConstant.imgLeftRight, height: 12.adaptSize, width: 12.adaptSize, margin: EdgeInsets.only(top: 2.v)), CustomImageView(imagePath: ImageConstant.imgLeftRightGray20001, height: 12.adaptSize, width: 12.adaptSize, margin: EdgeInsets.only(left: 6.h, top: 2.v))]), SizedBox(height: 17.v), Container(padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.v), decoration: AppDecoration.fillGray5001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: EdgeInsets.symmetric(vertical: 5.5.v), child: SizedBox(width: 295.h, child: Divider(height: 1.v, thickness: 1.v, color: appTheme.gray20001)));}, itemCount: controller.locationListModelObj.value.userprofile1ItemList.value.length, itemBuilder: (context, index) {Userprofile1ItemModel model = controller.locationListModelObj.value.userprofile1ItemList.value[index]; return Userprofile1ItemWidget(model);})))]); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Navigates to the createLocationScreen when the action is triggered.
onTapAddLocation() { Get.toNamed(AppRoutes.createLocationScreen, ); } 
 }
