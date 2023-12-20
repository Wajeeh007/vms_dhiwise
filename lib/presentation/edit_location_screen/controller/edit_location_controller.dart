import 'package:vms/core/app_export.dart';import 'package:vms/presentation/edit_location_screen/models/edit_location_model.dart';import 'package:flutter/material.dart';/// A controller class for the EditLocationScreen.
///
/// This class manages the state of the EditLocationScreen, including the
/// current editLocationModelObj
class EditLocationController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController addressController = TextEditingController();

TextEditingController monthController = TextEditingController();

TextEditingController dateController = TextEditingController();

Rx<EditLocationModel> editLocationModelObj = EditLocationModel().obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

SelectionPopupModel? selectedDropDownValue2;

@override void onClose() { super.onClose(); nameController.dispose(); addressController.dispose(); monthController.dispose(); dateController.dispose(); } 
onSelected(dynamic value) { for (var element in editLocationModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} editLocationModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in editLocationModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} editLocationModelObj.value.dropdownItemList1.refresh(); } 
onSelected2(dynamic value) { for (var element in editLocationModelObj.value.dropdownItemList2.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} editLocationModelObj.value.dropdownItemList2.refresh(); } 
 }
