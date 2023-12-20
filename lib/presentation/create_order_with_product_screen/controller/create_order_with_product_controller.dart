import 'package:vms/core/app_export.dart';import 'package:vms/presentation/create_order_with_product_screen/models/create_order_with_product_model.dart';import 'package:flutter/material.dart';/// A controller class for the CreateOrderWithProductScreen.
///
/// This class manages the state of the CreateOrderWithProductScreen, including the
/// current createOrderWithProductModelObj
class CreateOrderWithProductController extends GetxController {TextEditingController searchController = TextEditingController();

TextEditingController valueController = TextEditingController();

TextEditingController searchController1 = TextEditingController();

Rx<CreateOrderWithProductModel> createOrderWithProductModelObj = CreateOrderWithProductModel().obs;

Rx<bool> paymentDueLater = false.obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); searchController.dispose(); valueController.dispose(); searchController1.dispose(); } 
onSelected(dynamic value) { for (var element in createOrderWithProductModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} createOrderWithProductModelObj.value.dropdownItemList.refresh(); } 
 }
