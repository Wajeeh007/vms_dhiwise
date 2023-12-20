import 'package:vms/core/app_export.dart';import 'package:vms/presentation/create_payout_one_screen/models/create_payout_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the CreatePayoutOneScreen.
///
/// This class manages the state of the CreatePayoutOneScreen, including the
/// current createPayoutOneModelObj
class CreatePayoutOneController extends GetxController {TextEditingController amountController = TextEditingController();

TextEditingController dateController = TextEditingController();

TextEditingController timeController = TextEditingController();

Rx<CreatePayoutOneModel> createPayoutOneModelObj = CreatePayoutOneModel().obs;

Rx<String> radioGroup = "".obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

SelectionPopupModel? selectedDropDownValue2;

@override void onClose() { super.onClose(); amountController.dispose(); dateController.dispose(); timeController.dispose(); } 
onSelected(dynamic value) { for (var element in createPayoutOneModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} createPayoutOneModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in createPayoutOneModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} createPayoutOneModelObj.value.dropdownItemList1.refresh(); } 
onSelected2(dynamic value) { for (var element in createPayoutOneModelObj.value.dropdownItemList2.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} createPayoutOneModelObj.value.dropdownItemList2.refresh(); } 
 }
