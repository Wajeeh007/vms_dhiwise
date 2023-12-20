import 'package:vms/core/app_export.dart';import 'package:vms/presentation/create_location_one_screen/models/create_location_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the CreateLocationOneScreen.
///
/// This class manages the state of the CreateLocationOneScreen, including the
/// current createLocationOneModelObj
class CreateLocationOneController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController addressController = TextEditingController();

Rx<CreateLocationOneModel> createLocationOneModelObj = CreateLocationOneModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); nameController.dispose(); addressController.dispose(); } 
onSelected(dynamic value) { for (var element in createLocationOneModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} createLocationOneModelObj.value.dropdownItemList.refresh(); } 
 }
