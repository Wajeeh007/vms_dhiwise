import 'package:vms/core/app_export.dart';
import 'package:vms/presentation/vendor_dashboard_two_screen/models/vendor_dashboard_two_model.dart';

/// A controller class for the VendorDashboardTwoScreen.
///
/// This class manages the state of the VendorDashboardTwoScreen, including the
/// current vendorDashboardTwoModelObj
class VendorDashboardTwoController extends GetxController {
  Rx<VendorDashboardTwoModel> vendorDashboardTwoModelObj =
      VendorDashboardTwoModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element
        in vendorDashboardTwoModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    vendorDashboardTwoModelObj.value.dropdownItemList.refresh();
  }
}
