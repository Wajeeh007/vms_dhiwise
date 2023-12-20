import '../create_collections_one_screen/widgets/inputfield_item_widget.dart';import 'controller/create_collections_one_controller.dart';import 'models/inputfield_item_model.dart';import 'package:flutter/material.dart';import 'package:vms/core/app_export.dart';import 'package:vms/widgets/app_bar/appbar_leading_image.dart';import 'package:vms/widgets/app_bar/appbar_subtitle.dart';import 'package:vms/widgets/app_bar/custom_app_bar.dart';import 'package:vms/widgets/custom_checkbox_button.dart';import 'package:vms/widgets/custom_drop_down.dart';import 'package:vms/widgets/custom_elevated_button.dart';import 'package:vms/widgets/custom_icon_button.dart';import 'package:vms/widgets/custom_radio_button.dart';import 'package:vms/widgets/custom_text_form_field.dart';class CreateCollectionsOneScreen extends GetWidget<CreateCollectionsOneController> {const CreateCollectionsOneScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 26.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 5.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildTitle(), SizedBox(height: 19.v), _buildFileUpload(), SizedBox(height: 19.v), _buildPaperclip(), SizedBox(height: 19.v), Text("lbl_select_all".tr, style: CustomTextStyles.bodySmallPrimary12), SizedBox(height: 18.v), _buildOnlineStore(), SizedBox(height: 18.v), _buildBuyButton(), SizedBox(height: 17.v), _buildPointOfSale(), SizedBox(height: 18.v), _buildMultiVendorDashboard(), SizedBox(height: 17.v), _buildShop(), SizedBox(height: 5.v), Align(alignment: Alignment.center, child: Container(width: 292.h, margin: EdgeInsets.only(left: 24.h, right: 10.h), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_shop_has_noticed2".tr, style: CustomTextStyles.bodySmallGray600), TextSpan(text: "lbl_learn_more".tr, style: CustomTextStyles.bodySmallPrimary)]), textAlign: TextAlign.left))), SizedBox(height: 16.v), _buildFacebookInstagram(), SizedBox(height: 16.v), _buildCreateCollections()]))))])), bottomNavigationBar: _buildSaveCreate())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftBlueGray30001, margin: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 10.v), onTap: () {onTapArrowLeft();}), title: AppbarSubtitle(text: "msg_create_collection".tr, margin: EdgeInsets.only(left: 75.h)), styleType: Style.bgShadow); } 
/// Section Widget
Widget _buildTitle() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_title".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), CustomTextFormField(controller: controller.priceController, hintText: "msg_e_g_summer_collection".tr)]); } 
/// Section Widget
Widget _buildFileUpload() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_collection_image".tr, style: theme.textTheme.titleSmall), SizedBox(height: 12.v), Obx(() => Wrap(runSpacing: 8.v, spacing: 8.h, children: List<Widget>.generate(controller.createCollectionsOneModelObj.value.inputfieldItemList.value.length, (index) {InputfieldItemModel model = controller.createCollectionsOneModelObj.value.inputfieldItemList.value[index]; return InputfieldItemWidget(model);})))]); } 
/// Section Widget
Widget _buildDescription() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_description".tr, style: theme.textTheme.titleSmall), SizedBox(height: 12.v), CustomTextFormField(controller: controller.paperclipController, hintText: "msg_write_product_description".tr, prefix: Padding(padding: EdgeInsets.fromLTRB(20.h, 12.v, 30.h, 30.v), child: Row(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imageNotFound, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.fromLTRB(20.h, 12.v, -20.h, 30.v)), CustomImageView(imagePath: ImageConstant.imageNotFound, height: 16.adaptSize, width: 16.adaptSize), CustomImageView(imagePath: ImageConstant.imageNotFound, height: 16.adaptSize, width: 16.adaptSize), CustomImageView(imagePath: ImageConstant.imageNotFound, height: 16.adaptSize, width: 16.adaptSize), CustomImageView(imagePath: ImageConstant.imageNotFound, height: 16.adaptSize, width: 16.adaptSize)])), prefixConstraints: BoxConstraints(maxHeight: 206.v), suffix: Container(margin: EdgeInsets.fromLTRB(-20.h, 12.v, 30.h, 30.v), child: CustomImageView(imagePath: ImageConstant.imgList, height: 16.adaptSize, width: 16.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 206.v), maxLines: 11, contentPadding: EdgeInsets.symmetric(vertical: 30.v), borderDecoration: TextFormFieldStyleHelper.outlineGrayTL8, filled: false)]); } 
/// Section Widget
Widget _buildInput() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(margin: EdgeInsets.only(right: 27.h), decoration: BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [Container(height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(bottom: 46.v), decoration: BoxDecoration(color: appTheme.gray5001, borderRadius: BorderRadius.circular(8.h), border: Border.all(color: appTheme.blueGray100, width: 1.h, strokeAlign: strokeAlignOutside))), Expanded(child: Padding(padding: EdgeInsets.only(left: 8.h, top: 2.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_manual".tr, style: CustomTextStyles.titleSmallGray900_1), SizedBox(height: 6.v), SizedBox(width: 243.h, child: RichText(text: TextSpan(children: [TextSpan(text: "msg_add_products_to2".tr, style: CustomTextStyles.bodySmallGray60001), TextSpan(text: "msg_manual_collections".tr, style: CustomTextStyles.bodySmallPrimary), TextSpan(text: "lbl3".tr, style: CustomTextStyles.bodySmallGray60001)]), textAlign: TextAlign.left))])))])), SizedBox(height: 15.v), Container(margin: EdgeInsets.only(right: 6.h), decoration: BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgContrast, height: 19.v, width: 16.h, margin: EdgeInsets.only(bottom: 78.v)), Expanded(child: Padding(padding: EdgeInsets.only(left: 8.h, top: 2.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_automatic".tr, style: CustomTextStyles.titleSmallGray900_1), SizedBox(height: 6.v), SizedBox(width: 264.h, child: RichText(text: TextSpan(children: [TextSpan(text: "msg_existing_and_future2".tr, style: CustomTextStyles.bodySmallGray60001), TextSpan(text: "msg_automated_collections".tr, style: CustomTextStyles.bodySmallPrimary), TextSpan(text: "lbl3".tr, style: CustomTextStyles.bodySmallPrimary)]), textAlign: TextAlign.left))])))]))]); } 
/// Section Widget
Widget _buildConditions() { return Column(children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_conditions".tr, style: CustomTextStyles.titleSmallGray900_1), SizedBox(height: 6.v), Text("msg_products_must_match".tr, style: CustomTextStyles.bodySmallGray6000112), SizedBox(height: 10.v), Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Obx(() => Row(children: [CustomRadioButton(text: "lbl_all_conditions".tr, value: controller.createCollectionsOneModelObj.value.radioList.value[0], groupValue: controller.productsMustMatch.value, padding: EdgeInsets.symmetric(vertical: 1.v), textStyle: CustomTextStyles.bodySmallGray6000112, onChange: (value) {controller.productsMustMatch.value = value;}), Padding(padding: EdgeInsets.only(left: 50.h), child: CustomRadioButton(text: "lbl_any_condition".tr, value: controller.createCollectionsOneModelObj.value.radioList.value[1], groupValue: controller.productsMustMatch.value, textStyle: CustomTextStyles.bodySmallGray6000112, onChange: (value) {controller.productsMustMatch.value = value;}))])), SizedBox(height: 8.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Padding(padding: EdgeInsets.only(right: 4.h), child: CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(29.h, 9.v, 16.h, 9.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdownBlueGray30001, height: 16.adaptSize, width: 16.adaptSize)), hintText: "lbl_product_tag".tr, hintStyle: CustomTextStyles.bodySmallGray90001, items: controller.createCollectionsOneModelObj.value.dropdownItemList!.value, onChanged: (value) {controller.onSelected(value);}))), Expanded(child: Padding(padding: EdgeInsets.only(left: 4.h), child: CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 9.v, 16.h, 9.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdownBlueGray30001, height: 16.adaptSize, width: 16.adaptSize)), hintText: "lbl_is_equal_to".tr, hintStyle: CustomTextStyles.bodySmallGray90001, items: controller.createCollectionsOneModelObj.value.dropdownItemList1!.value, onChanged: (value) {controller.onSelected1(value);})))])])]), SizedBox(height: 8.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomTextFormField(controller: controller.inputController)), Padding(padding: EdgeInsets.only(left: 8.h), child: CustomIconButton(height: 32.adaptSize, width: 32.adaptSize, padding: EdgeInsets.all(8.h), decoration: IconButtonStyleHelper.outlineGrayTL8, child: CustomImageView(imagePath: ImageConstant.imgArrowup)))]), SizedBox(height: 12.v), Align(alignment: Alignment.centerLeft, child: Row(children: [CustomImageView(imagePath: ImageConstant.imgPlusPrimary, height: 16.adaptSize, width: 16.adaptSize), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("msg_add_another_condition".tr, style: CustomTextStyles.labelLargePrimarySemiBold))]))]); } 
/// Section Widget
Widget _buildPaperclip() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildDescription(), SizedBox(height: 16.v), Container(padding: EdgeInsets.all(16.h), decoration: AppDecoration.fillGray5001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [_buildInput(), SizedBox(height: 17.v), _buildConditions(), SizedBox(height: 5.v)])), SizedBox(height: 19.v), Text("lbl_publishing".tr, style: CustomTextStyles.titleSmallGray900_1), SizedBox(height: 9.v), Text("msg_will_be_included".tr, style: CustomTextStyles.bodySmallGray60012)]); } 
/// Section Widget
Widget _buildOnlineStore() { return Obx(() => CustomCheckboxButton(text: "lbl_online_store".tr, value: controller.onlineStore.value, padding: EdgeInsets.symmetric(vertical: 1.v), textStyle: CustomTextStyles.bodySmallGray60012, onChange: (value) {controller.onlineStore.value = value;})); } 
/// Section Widget
Widget _buildBuyButton() { return Obx(() => CustomCheckboxButton(text: "lbl_buy_button".tr, value: controller.buyButton.value, textStyle: CustomTextStyles.bodySmallGray60012, onChange: (value) {controller.buyButton.value = value;})); } 
/// Section Widget
Widget _buildPointOfSale() { return Obx(() => CustomCheckboxButton(text: "lbl_point_of_sale".tr, value: controller.pointOfSale.value, padding: EdgeInsets.symmetric(vertical: 1.v), textStyle: CustomTextStyles.bodySmallGray60012, onChange: (value) {controller.pointOfSale.value = value;})); } 
/// Section Widget
Widget _buildMultiVendorDashboard() { return Obx(() => CustomCheckboxButton(text: "msg_multi_vendor_dashboard".tr, value: controller.multiVendorDashboard.value, padding: EdgeInsets.symmetric(vertical: 1.v), textStyle: CustomTextStyles.bodySmallGray60012, onChange: (value) {controller.multiVendorDashboard.value = value;})); } 
/// Section Widget
Widget _buildShop() { return Obx(() => CustomCheckboxButton(text: "lbl_shop".tr, value: controller.shop.value, textStyle: CustomTextStyles.bodySmallGray60012, onChange: (value) {controller.shop.value = value;})); } 
/// Section Widget
Widget _buildFacebookInstagram() { return Obx(() => CustomCheckboxButton(text: "msg_facebook_instagram".tr, value: controller.facebookInstagram.value, textStyle: CustomTextStyles.bodySmallGray60012, onChange: (value) {controller.facebookInstagram.value = value;})); } 
/// Section Widget
Widget _buildDescription1() { return Column(children: [_buildLabelHelp(title: "lbl_seo_description".tr, helpText: "msg_0_of_320_characters".tr), SizedBox(height: 12.v), CustomTextFormField(controller: controller.paperclipController1, hintText: "msg_write_product_description".tr, prefix: Padding(padding: EdgeInsets.fromLTRB(20.h, 12.v, 30.h, 30.v), child: Row(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imageNotFound, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.fromLTRB(20.h, 12.v, -20.h, 30.v)), CustomImageView(imagePath: ImageConstant.imageNotFound, height: 16.adaptSize, width: 16.adaptSize), CustomImageView(imagePath: ImageConstant.imageNotFound, height: 16.adaptSize, width: 16.adaptSize), CustomImageView(imagePath: ImageConstant.imageNotFound, height: 16.adaptSize, width: 16.adaptSize)])), prefixConstraints: BoxConstraints(maxHeight: 206.v), suffix: Container(margin: EdgeInsets.fromLTRB(-84.h, 12.v, 30.h, 30.v), child: CustomImageView(imagePath: ImageConstant.imgFaceLaugh, height: 16.adaptSize, width: 16.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 206.v), maxLines: 11, contentPadding: EdgeInsets.symmetric(vertical: 30.v), borderDecoration: TextFormFieldStyleHelper.outlineGrayTL8, filled: false)]); } 
/// Section Widget
Widget _buildTitle1() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_handle".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), CustomTextFormField(controller: controller.httpsismmartcomcollectionsvaluController, hintText: "msg_https_ismmart".tr, textInputAction: TextInputAction.done)]); } 
/// Section Widget
Widget _buildCreateCollections() { return Container(padding: EdgeInsets.all(16.h), decoration: AppDecoration.fillGray5001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 3.v), Align(alignment: Alignment.centerLeft, child: Text("msg_search_engine_listing".tr, style: theme.textTheme.titleSmall)), SizedBox(height: 5.v), Align(alignment: Alignment.centerLeft, child: Container(width: 276.h, margin: EdgeInsets.only(right: 18.h), child: Text("msg_add_a_title_and".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodySmallGray60012.copyWith(height: 1.50)))), SizedBox(height: 17.v), _buildLabelHelp(title: "lbl_seo_title".tr, helpText: "msg_0_of_70_characters".tr), SizedBox(height: 9.v), CustomTextFormField(controller: controller.inputController1), SizedBox(height: 18.v), _buildDescription1(), SizedBox(height: 18.v), _buildTitle1()])); } 
/// Section Widget
Widget _buildSaveCreate() { return CustomElevatedButton(text: "lbl_save_create".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v)); } 
/// Common widget
Widget _buildLabelHelp({required String title, required String helpText, }) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text(title, style: theme.textTheme.titleSmall!.copyWith(color: appTheme.gray90001))), Padding(padding: EdgeInsets.only(bottom: 3.v), child: Text(helpText, style: CustomTextStyles.bodySmall12.copyWith(color: appTheme.blueGray30001)))]); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
