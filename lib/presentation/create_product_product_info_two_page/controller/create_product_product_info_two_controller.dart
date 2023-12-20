import 'package:vms/core/app_export.dart';import 'package:vms/presentation/create_product_product_info_two_page/models/create_product_product_info_two_model.dart';/// A controller class for the CreateProductProductInfoTwoPage.
///
/// This class manages the state of the CreateProductProductInfoTwoPage, including the
/// current createProductProductInfoTwoModelObj
class CreateProductProductInfoTwoController extends GetxController {CreateProductProductInfoTwoController(this.createProductProductInfoTwoModelObj);

Rx<CreateProductProductInfoTwoModel> createProductProductInfoTwoModelObj;

Rx<bool> check = false.obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

onSelected(dynamic value) { for (var element in createProductProductInfoTwoModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} createProductProductInfoTwoModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in createProductProductInfoTwoModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} createProductProductInfoTwoModelObj.value.dropdownItemList1.refresh(); } 
 }
