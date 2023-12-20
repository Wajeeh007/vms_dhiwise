import 'package:vms/core/app_export.dart';import 'package:vms/presentation/create_order_no_product_screen/models/create_order_no_product_model.dart';import 'package:flutter/material.dart';/// A controller class for the CreateOrderNoProductScreen.
///
/// This class manages the state of the CreateOrderNoProductScreen, including the
/// current createOrderNoProductModelObj
class CreateOrderNoProductController extends GetxController {TextEditingController searchController = TextEditingController();

TextEditingController searchController1 = TextEditingController();

Rx<CreateOrderNoProductModel> createOrderNoProductModelObj = CreateOrderNoProductModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); searchController.dispose(); searchController1.dispose(); } 
onSelected(dynamic value) { for (var element in createOrderNoProductModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} createOrderNoProductModelObj.value.dropdownItemList.refresh(); } 
 }
