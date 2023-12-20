import '../collections_screen/widgets/cartitem_item_widget.dart';import 'controller/collections_controller.dart';import 'models/cartitem_item_model.dart';import 'package:flutter/material.dart';import 'package:vms/core/app_export.dart';import 'package:vms/widgets/app_bar/appbar_image.dart';import 'package:vms/widgets/app_bar/appbar_subtitle.dart';import 'package:vms/widgets/app_bar/custom_app_bar.dart';import 'package:vms/widgets/custom_elevated_button.dart';class CollectionsScreen extends GetWidget<CollectionsController> {const CollectionsScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.all(24.h), child: Column(children: [_buildCreateCollection(), SizedBox(height: 17.v), _buildTen(), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: Container(margin: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 10.v), padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 6.v), decoration: AppDecoration.fillWhiteA, child: AppbarImage(imagePath: ImageConstant.imgMegaphone)), title: AppbarSubtitle(text: "lbl_collections".tr, margin: EdgeInsets.only(left: 101.h)), styleType: Style.bgShadow); } 
/// Section Widget
Widget _buildCreateCollection() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomElevatedButton(width: 165.h, text: "msg_create_collection".tr, leftIcon: Container(margin: EdgeInsets.only(right: 8.h), child: CustomImageView(imagePath: ImageConstant.imgPlus, height: 16.adaptSize, width: 16.adaptSize)), onPressed: () {onTapCreateCollection();}), Container(padding: EdgeInsets.all(9.h), decoration: AppDecoration.outlineGray200012.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgSearch, height: 16.adaptSize, width: 16.adaptSize), CustomImageView(imagePath: ImageConstant.imgIconsFilterList, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(left: 10.h))]))]); } 
/// Section Widget
Widget _buildTen() { return Column(children: [Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("lbl_1_10".tr, style: CustomTextStyles.bodySmall12), Padding(padding: EdgeInsets.only(left: 6.h), child: Text("lbl_of_50".tr, style: CustomTextStyles.bodySmall12)), Spacer(), CustomImageView(imagePath: ImageConstant.imgLeftRightBlueGray3000112x12, height: 12.adaptSize, width: 12.adaptSize), CustomImageView(imagePath: ImageConstant.imgLeftRightBlueGray30001, height: 12.adaptSize, width: 12.adaptSize, margin: EdgeInsets.only(left: 6.h))]), SizedBox(height: 17.v), Container(padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 11.v), decoration: AppDecoration.fillGray5001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: EdgeInsets.symmetric(vertical: 6.0.v), child: SizedBox(width: 295.h, child: Divider(height: 1.v, thickness: 1.v, color: appTheme.gray20001)));}, itemCount: controller.collectionsModelObj.value.cartitemItemList.value.length, itemBuilder: (context, index) {CartitemItemModel model = controller.collectionsModelObj.value.cartitemItemList.value[index]; return CartitemItemWidget(model);})))]); } 
/// Navigates to the createCollectionsScreen when the action is triggered.
onTapCreateCollection() { Get.toNamed(AppRoutes.createCollectionsScreen, ); } 
 }
