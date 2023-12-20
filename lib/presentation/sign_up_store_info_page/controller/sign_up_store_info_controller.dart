import 'package:vms/core/app_export.dart';import 'package:vms/presentation/sign_up_store_info_page/models/sign_up_store_info_model.dart';import 'package:flutter/material.dart';/// A controller class for the SignUpStoreInfoPage.
///
/// This class manages the state of the SignUpStoreInfoPage, including the
/// current signUpStoreInfoModelObj
class SignUpStoreInfoController extends GetxController {SignUpStoreInfoController(this.signUpStoreInfoModelObj);

TextEditingController storeSlugController = TextEditingController();

TextEditingController addressController = TextEditingController();

Rx<SignUpStoreInfoModel> signUpStoreInfoModelObj;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

SelectionPopupModel? selectedDropDownValue2;

@override void onClose() { super.onClose(); storeSlugController.dispose(); addressController.dispose(); } 
onSelected(dynamic value) { for (var element in signUpStoreInfoModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} signUpStoreInfoModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in signUpStoreInfoModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} signUpStoreInfoModelObj.value.dropdownItemList1.refresh(); } 
onSelected2(dynamic value) { for (var element in signUpStoreInfoModelObj.value.dropdownItemList2.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} signUpStoreInfoModelObj.value.dropdownItemList2.refresh(); } 
 }
