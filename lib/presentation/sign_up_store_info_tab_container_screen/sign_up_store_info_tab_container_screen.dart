import 'controller/sign_up_store_info_tab_container_controller.dart';import 'package:flutter/material.dart';import 'package:vms/core/app_export.dart';import 'package:vms/presentation/create_product_product_info_two_page/create_product_product_info_two_page.dart';import 'package:vms/presentation/sign_up_store_info_page/sign_up_store_info_page.dart';import 'package:vms/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:vms/widgets/app_bar/appbar_title.dart';import 'package:vms/widgets/app_bar/custom_app_bar.dart';import 'package:vms/widgets/custom_text_form_field.dart';class SignUpStoreInfoTabContainerScreen extends GetWidget<SignUpStoreInfoTabContainerController> {const SignUpStoreInfoTabContainerScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 55.v), child: Column(children: [_buildPhase(), SizedBox(height: 45.v), _buildInputField(), SizedBox(height: 20.v), _buildFileUpload(), SizedBox(height: 535.v, child: TabBarView(controller: controller.tabviewController, children: [CreateProductProductInfoTwoPage(), SignUpStoreInfoPage()]))]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 82.v, leadingWidth: 60.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 28.h, top: 34.v, bottom: 16.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarTitle(text: "lbl_sign_up".tr, margin: EdgeInsets.only(top: 37.v, bottom: 14.v)), styleType: Style.bgShadow_1); } 
/// Section Widget
Widget _buildPhase() { return Padding(padding: EdgeInsets.only(left: 25.h, right: 28.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_store_information".tr, style: CustomTextStyles.titleLargeInterGray90001), SizedBox(height: 13.v), Row(children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("lbl_next2".tr, style: CustomTextStyles.bodyMediumGray90001)), Padding(padding: EdgeInsets.only(left: 10.h), child: Text("msg_banking_information".tr, style: theme.textTheme.bodyMedium))])])), SizedBox(height: 58.adaptSize, width: 58.adaptSize, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.center, child: SizedBox(height: 58.adaptSize, width: 58.adaptSize, child: CircularProgressIndicator(value: 0.5, strokeWidth: 6.h))), Align(alignment: Alignment.center, child: Text("lbl_2_of_4".tr, style: CustomTextStyles.bodyMediumPoppinsBluegray800))]))])); } 
/// Section Widget
Widget _buildInputField() { return Container(padding: EdgeInsets.symmetric(horizontal: 25.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_store_name".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), CustomTextFormField(controller: controller.nameController, hintText: "lbl_al_jannat".tr, textInputAction: TextInputAction.done, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 10.v, 10.h, 10.v), child: CustomImageView(imagePath: ImageConstant.imgStore, height: 16.adaptSize, width: 16.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 37.v), contentPadding: EdgeInsets.only(top: 10.v, right: 30.h, bottom: 10.v))])); } 
/// Section Widget
Widget _buildFileUpload() { return Container(padding: EdgeInsets.symmetric(horizontal: 25.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_store_logo".tr, style: CustomTextStyles.titleSmallGray900_1), SizedBox(height: 12.v), Container(height: 37.v, width: 325.h, child: TabBar(controller: controller.tabviewController, labelPadding: EdgeInsets.zero, labelColor: appTheme.gray90001, labelStyle: TextStyle(fontSize: 14.fSize, fontFamily: 'Inter', fontWeight: FontWeight.w400), unselectedLabelColor: appTheme.gray5001, unselectedLabelStyle: TextStyle(fontSize: 14.fSize, fontFamily: 'Inter', fontWeight: FontWeight.w500), indicator: BoxDecoration(color: appTheme.gray5001, borderRadius: BorderRadius.horizontal(right: Radius.circular(8.h)), border: Border.all(color: appTheme.gray20001, width: 1.h, strokeAlign: strokeAlignOutside)), tabs: [Tab(child: Text("lbl_choose_file".tr)), Tab(child: Text("lbl_no_file_chosen".tr))]))])); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
