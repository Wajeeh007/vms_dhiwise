import 'package:vms/core/app_export.dart';import 'package:vms/presentation/orders_list_screen/models/orders_list_model.dart';/// A controller class for the OrdersListScreen.
///
/// This class manages the state of the OrdersListScreen, including the
/// current ordersListModelObj
class OrdersListController extends GetxController {Rx<OrdersListModel> ordersListModelObj = OrdersListModel().obs;

SelectionPopupModel? selectedDropDownValue;

onSelected(dynamic value) { for (var element in ordersListModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} ordersListModelObj.value.dropdownItemList.refresh(); } 
 }
