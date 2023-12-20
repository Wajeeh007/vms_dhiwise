import 'package:vms/core/app_export.dart';import 'package:vms/presentation/payout_list_one_screen/models/payout_list_one_model.dart';/// A controller class for the PayoutListOneScreen.
///
/// This class manages the state of the PayoutListOneScreen, including the
/// current payoutListOneModelObj
class PayoutListOneController extends GetxController {Rx<PayoutListOneModel> payoutListOneModelObj = PayoutListOneModel().obs;

SelectionPopupModel? selectedDropDownValue;

onSelected(dynamic value) { for (var element in payoutListOneModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} payoutListOneModelObj.value.dropdownItemList.refresh(); } 
 }
