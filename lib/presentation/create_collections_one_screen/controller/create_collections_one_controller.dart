import 'package:vms/core/app_export.dart';import 'package:vms/presentation/create_collections_one_screen/models/create_collections_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the CreateCollectionsOneScreen.
///
/// This class manages the state of the CreateCollectionsOneScreen, including the
/// current createCollectionsOneModelObj
class CreateCollectionsOneController extends GetxController {TextEditingController priceController = TextEditingController();

TextEditingController paperclipController = TextEditingController();

TextEditingController inputController = TextEditingController();

TextEditingController inputController1 = TextEditingController();

TextEditingController paperclipController1 = TextEditingController();

TextEditingController httpsismmartcomcollectionsvaluController = TextEditingController();

Rx<CreateCollectionsOneModel> createCollectionsOneModelObj = CreateCollectionsOneModel().obs;

Rx<String> productsMustMatch = "".obs;

Rx<bool> onlineStore = false.obs;

Rx<bool> buyButton = false.obs;

Rx<bool> pointOfSale = false.obs;

Rx<bool> multiVendorDashboard = false.obs;

Rx<bool> shop = false.obs;

Rx<bool> facebookInstagram = false.obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

@override void onClose() { super.onClose(); priceController.dispose(); paperclipController.dispose(); inputController.dispose(); inputController1.dispose(); paperclipController1.dispose(); httpsismmartcomcollectionsvaluController.dispose(); } 
onSelected(dynamic value) { for (var element in createCollectionsOneModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} createCollectionsOneModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in createCollectionsOneModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} createCollectionsOneModelObj.value.dropdownItemList1.refresh(); } 
 }
