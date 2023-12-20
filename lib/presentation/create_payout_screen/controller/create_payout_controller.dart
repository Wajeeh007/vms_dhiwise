import 'package:vms/core/app_export.dart';import 'package:vms/presentation/create_payout_screen/models/create_payout_model.dart';import 'package:flutter/material.dart';/// A controller class for the CreatePayoutScreen.
///
/// This class manages the state of the CreatePayoutScreen, including the
/// current createPayoutModelObj
class CreatePayoutController extends GetxController {TextEditingController amountController = TextEditingController();

Rx<CreatePayoutModel> createPayoutModelObj = CreatePayoutModel().obs;

Rx<String> radioGroup = "".obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

SelectionPopupModel? selectedDropDownValue2;

@override void onClose() { super.onClose(); amountController.dispose(); } 
onSelected(dynamic value) { for (var element in createPayoutModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} createPayoutModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in createPayoutModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} createPayoutModelObj.value.dropdownItemList1.refresh(); } 
onSelected2(dynamic value) { for (var element in createPayoutModelObj.value.dropdownItemList2.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} createPayoutModelObj.value.dropdownItemList2.refresh(); } 
 }
