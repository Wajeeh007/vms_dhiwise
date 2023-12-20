import 'package:vms/core/app_export.dart';import 'package:vms/presentation/bottom_menu_one_screen/models/bottom_menu_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the BottomMenuOneScreen.
///
/// This class manages the state of the BottomMenuOneScreen, including the
/// current bottomMenuOneModelObj
class BottomMenuOneController extends GetxController {TextEditingController inputController = TextEditingController();

TextEditingController inputController1 = TextEditingController();

TextEditingController inputController2 = TextEditingController();

TextEditingController inputController3 = TextEditingController();

TextEditingController inputController4 = TextEditingController();

TextEditingController inputController5 = TextEditingController();

Rx<BottomMenuOneModel> bottomMenuOneModelObj = BottomMenuOneModel().obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

@override void onClose() { super.onClose(); inputController.dispose(); inputController1.dispose(); inputController2.dispose(); inputController3.dispose(); inputController4.dispose(); inputController5.dispose(); } 
onSelected(dynamic value) { for (var element in bottomMenuOneModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} bottomMenuOneModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in bottomMenuOneModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} bottomMenuOneModelObj.value.dropdownItemList1.refresh(); } 
 }
