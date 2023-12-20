import '../create_product_product_info_two_page/widgets/seventy_item_widget.dart';import 'controller/create_product_product_info_two_controller.dart';import 'models/create_product_product_info_two_model.dart';import 'models/seventy_item_model.dart';import 'package:flutter/material.dart';import 'package:vms/core/app_export.dart';import 'package:vms/widgets/custom_checkbox_button.dart';import 'package:vms/widgets/custom_drop_down.dart';import 'package:vms/widgets/custom_elevated_button.dart';
// ignore_for_file: must_be_immutable
class CreateProductProductInfoTwoPage extends StatelessWidget {CreateProductProductInfoTwoPage({Key? key}) : super(key: key);

CreateProductProductInfoTwoController controller = Get.put(CreateProductProductInfoTwoController(CreateProductProductInfoTwoModel().obs));

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: _buildScrollViewSection())); } 
/// Section Widget
Widget _buildTitleSection() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_price".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), Container(padding: EdgeInsets.fromLTRB(16.h, 10.v, 16.h, 9.v), decoration: AppDecoration.outlineGray200011, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_500_00".tr, style: CustomTextStyles.bodyMediumGray90001), SizedBox(height: 2.v), Text("lbl_800_00".tr, style: CustomTextStyles.bodySmallSecondaryContainer.copyWith(decoration: TextDecoration.lineThrough))]), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.symmetric(vertical: 9.v))]))]); } 
/// Section Widget
Widget _buildTypeSection() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_type2".tr, style: theme.textTheme.titleSmall), SizedBox(height: 8.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 10.v, 16.h, 10.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdownBlueGray30001, height: 16.adaptSize, width: 16.adaptSize)), hintText: "msg_select_product_type".tr, items: controller.createProductProductInfoTwoModelObj.value.dropdownItemList!.value, onChanged: (value) {controller.onSelected(value);})]); } 
/// Section Widget
Widget _buildCategorySection() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_category".tr, style: theme.textTheme.titleSmall), SizedBox(height: 8.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 10.v, 16.h, 10.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdownBlueGray30001, height: 16.adaptSize, width: 16.adaptSize)), hintText: "msg_select_product_category".tr, items: controller.createProductProductInfoTwoModelObj.value.dropdownItemList1!.value, onChanged: (value) {controller.onSelected1(value);})]); } 
/// Section Widget
Widget _buildTagsSection() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_tags".tr, style: theme.textTheme.titleSmall), SizedBox(height: 8.v), Obx(() => Wrap(runSpacing: 10.v, spacing: 10.h, children: List<Widget>.generate(controller.createProductProductInfoTwoModelObj.value.seventyItemList.value.length, (index) {SeventyItemModel model = controller.createProductProductInfoTwoModelObj.value.seventyItemList.value[index]; return SeventyItemWidget(model);})))]); } 
/// Section Widget
Widget _buildCheckSection() { return Column(children: [_buildTitleSection(), SizedBox(height: 20.v), _buildTypeSection(), SizedBox(height: 20.v), _buildCategorySection(), SizedBox(height: 20.v), _buildTagsSection(), SizedBox(height: 16.v), Align(alignment: Alignment.centerLeft, child: Obx(() => CustomCheckboxButton(alignment: Alignment.centerLeft, text: "msg_this_is_physical".tr, value: controller.check.value, padding: EdgeInsets.symmetric(vertical: 1.v), onChange: (value) {controller.check.value = value;}))), SizedBox(height: 16.v), CustomElevatedButton(text: "lbl_save_next".tr, onPressed: () {onTapSaveNext();})]); } 
/// Section Widget
Widget _buildScrollViewSection() { return SingleChildScrollView(child: Column(children: [SizedBox(height: 18.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [_buildCheckSection(), SizedBox(height: 16.v), CustomElevatedButton(text: "lbl_back".tr, buttonStyle: CustomButtonStyles.fillGrayTL8, onPressed: () {onTapBack();})]))])); } 
/// Navigates to the createProductVariantsScreen when the action is triggered.
onTapSaveNext() { Get.toNamed(AppRoutes.createProductVariantsScreen, ); } 
/// Navigates to the createProductProductInfoTabContainerScreen when the action is triggered.
onTapBack() { Get.toNamed(AppRoutes.createProductProductInfoTabContainerScreen, ); } 
 }
