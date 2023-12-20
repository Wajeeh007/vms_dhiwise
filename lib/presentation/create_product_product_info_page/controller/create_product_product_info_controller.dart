import 'package:vms/core/app_export.dart';import 'package:vms/presentation/create_product_product_info_page/models/create_product_product_info_model.dart';import 'package:flutter/material.dart';/// A controller class for the CreateProductProductInfoPage.
///
/// This class manages the state of the CreateProductProductInfoPage, including the
/// current createProductProductInfoModelObj
class CreateProductProductInfoController extends GetxController {CreateProductProductInfoController(this.createProductProductInfoModelObj);

TextEditingController searchController = TextEditingController();

Rx<CreateProductProductInfoModel> createProductProductInfoModelObj;

Rx<bool> check = false.obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

SelectionPopupModel? selectedDropDownValue2;

@override void onClose() { super.onClose(); searchController.dispose(); } 
onSelected(dynamic value) { for (var element in createProductProductInfoModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} createProductProductInfoModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in createProductProductInfoModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} createProductProductInfoModelObj.value.dropdownItemList1.refresh(); } 
onSelected2(dynamic value) { for (var element in createProductProductInfoModelObj.value.dropdownItemList2.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} createProductProductInfoModelObj.value.dropdownItemList2.refresh(); } 
 }
