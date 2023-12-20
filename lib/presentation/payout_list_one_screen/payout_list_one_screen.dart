import '../payout_list_one_screen/widgets/userprofile_item_widget.dart';import 'controller/payout_list_one_controller.dart';import 'models/userprofile_item_model.dart';import 'package:flutter/material.dart';import 'package:vms/core/app_export.dart';import 'package:vms/widgets/app_bar/appbar_image.dart';import 'package:vms/widgets/app_bar/appbar_subtitle.dart';import 'package:vms/widgets/app_bar/custom_app_bar.dart';import 'package:vms/widgets/custom_drop_down.dart';import 'package:vms/widgets/custom_elevated_button.dart';import 'package:vms/widgets/custom_icon_button.dart';class PayoutListOneScreen extends GetWidget<PayoutListOneController> {const PayoutListOneScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 18.v), child: Column(children: [SizedBox(height: 6.v), _buildCreateCollection(), SizedBox(height: 16.v), _buildSearch(), SizedBox(height: 17.v), _buildTen()])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: Container(margin: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 10.v), padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 6.v), decoration: AppDecoration.fillWhiteA, child: AppbarImage(imagePath: ImageConstant.imgMegaphone)), title: AppbarSubtitle(text: "lbl_payouts".tr, margin: EdgeInsets.only(left: 116.h)), styleType: Style.bgShadow); } 
/// Section Widget
Widget _buildCreateCollection() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomElevatedButton(width: 153.h, text: "lbl_create_payouts".tr, leftIcon: Container(margin: EdgeInsets.only(right: 8.h), child: CustomImageView(imagePath: ImageConstant.imgPlus, height: 16.adaptSize, width: 16.adaptSize)), onPressed: () {onTapCreatePayouts();}), CustomIconButton(height: 36.adaptSize, width: 36.adaptSize, padding: EdgeInsets.all(10.h), child: CustomImageView(imagePath: ImageConstant.imgNotification))]); } 
/// Section Widget
Widget _buildSearch() { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 10.v, 10.h, 10.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdown, height: 16.adaptSize, width: 16.adaptSize)), hintText: "lbl_paid".tr, items: controller.payoutListOneModelObj.value.dropdownItemList!.value, borderDecoration: DropDownStyleHelper.outlineGray, filled: false, onChanged: (value) {controller.onSelected(value);})), Padding(padding: EdgeInsets.only(left: 8.h), child: CustomIconButton(height: 36.v, width: 62.h, padding: EdgeInsets.all(10.h), child: CustomImageView(imagePath: ImageConstant.imgSearch)))]); } 
/// Section Widget
Widget _buildTen() { return Column(children: [Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("lbl_1_20".tr, style: CustomTextStyles.bodySmall12), Padding(padding: EdgeInsets.only(left: 6.h), child: Text("lbl_of_50".tr, style: CustomTextStyles.bodySmall12)), Spacer(), CustomImageView(imagePath: ImageConstant.imgLeftRight, height: 12.adaptSize, width: 12.adaptSize), CustomImageView(imagePath: ImageConstant.imgLeftRightBlueGray30001, height: 12.adaptSize, width: 12.adaptSize, margin: EdgeInsets.only(left: 6.h))]), SizedBox(height: 17.v), Container(padding: EdgeInsets.symmetric(horizontal: 8.h), decoration: AppDecoration.outlineBlack.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: EdgeInsets.symmetric(vertical: 7.0.v), child: SizedBox(width: 311.h, child: Divider(height: 1.v, thickness: 1.v, color: appTheme.gray20001)));}, itemCount: controller.payoutListOneModelObj.value.userprofileItemList.value.length, itemBuilder: (context, index) {UserprofileItemModel model = controller.payoutListOneModelObj.value.userprofileItemList.value[index]; return UserprofileItemWidget(model);})))]); } 
/// Navigates to the createProductProductInfoTabContainerScreen when the action is triggered.
onTapCreatePayouts() { Get.toNamed(AppRoutes.createProductProductInfoTabContainerScreen, ); } 
 }
