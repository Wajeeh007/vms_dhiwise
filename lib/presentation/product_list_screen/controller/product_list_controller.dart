import 'package:vms/core/app_export.dart';import 'package:vms/presentation/product_list_screen/models/product_list_model.dart';/// A controller class for the ProductListScreen.
///
/// This class manages the state of the ProductListScreen, including the
/// current productListModelObj
class ProductListController extends GetxController {Rx<ProductListModel> productListModelObj = ProductListModel().obs;

SelectionPopupModel? selectedDropDownValue;

onSelected(dynamic value) { for (var element in productListModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} productListModelObj.value.dropdownItemList.refresh(); } 
 }
