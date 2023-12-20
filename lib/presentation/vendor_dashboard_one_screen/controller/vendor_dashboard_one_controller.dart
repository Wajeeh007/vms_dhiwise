import 'package:vms/core/app_export.dart';
import 'package:vms/presentation/vendor_dashboard_one_screen/models/vendor_dashboard_one_model.dart';

/// A controller class for the VendorDashboardOneScreen.
///
/// This class manages the state of the VendorDashboardOneScreen, including the
/// current vendorDashboardOneModelObj
class VendorDashboardOneController extends GetxController {
  Rx<VendorDashboardOneModel> vendorDashboardOneModelObj =
      VendorDashboardOneModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element
        in vendorDashboardOneModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    vendorDashboardOneModelObj.value.dropdownItemList.refresh();
  }
}
