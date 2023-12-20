import 'package:vms/core/app_export.dart';
import 'package:vms/presentation/vendor_dashboard_screen/models/vendor_dashboard_model.dart';

/// A controller class for the VendorDashboardScreen.
///
/// This class manages the state of the VendorDashboardScreen, including the
/// current vendorDashboardModelObj
class VendorDashboardController extends GetxController {
  Rx<VendorDashboardModel> vendorDashboardModelObj = VendorDashboardModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element in vendorDashboardModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    vendorDashboardModelObj.value.dropdownItemList.refresh();
  }
}
