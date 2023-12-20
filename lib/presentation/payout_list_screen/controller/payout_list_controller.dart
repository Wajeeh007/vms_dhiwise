import 'package:vms/core/app_export.dart';import 'package:vms/presentation/payout_list_screen/models/payout_list_model.dart';/// A controller class for the PayoutListScreen.
///
/// This class manages the state of the PayoutListScreen, including the
/// current payoutListModelObj
class PayoutListController extends GetxController {Rx<PayoutListModel> payoutListModelObj = PayoutListModel().obs;

SelectionPopupModel? selectedDropDownValue;

onSelected(dynamic value) { for (var element in payoutListModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} payoutListModelObj.value.dropdownItemList.refresh(); } 
 }
