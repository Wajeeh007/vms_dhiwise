import 'package:vms/core/app_export.dart';import 'package:vms/presentation/create_location_screen/models/create_location_model.dart';import 'package:flutter/material.dart';/// A controller class for the CreateLocationScreen.
///
/// This class manages the state of the CreateLocationScreen, including the
/// current createLocationModelObj
class CreateLocationController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController addressController = TextEditingController();

Rx<CreateLocationModel> createLocationModelObj = CreateLocationModel().obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

SelectionPopupModel? selectedDropDownValue2;

@override void onClose() { super.onClose(); nameController.dispose(); addressController.dispose(); } 
onSelected(dynamic value) { for (var element in createLocationModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} createLocationModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in createLocationModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} createLocationModelObj.value.dropdownItemList1.refresh(); } 
onSelected2(dynamic value) { for (var element in createLocationModelObj.value.dropdownItemList2.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} createLocationModelObj.value.dropdownItemList2.refresh(); } 
 }
