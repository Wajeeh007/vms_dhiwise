import 'package:vms/core/app_export.dart';
import 'package:vms/presentation/vendor_dashboard_three_screen/models/vendor_dashboard_three_model.dart';

/// A controller class for the VendorDashboardThreeScreen.
///
/// This class manages the state of the VendorDashboardThreeScreen, including the
/// current vendorDashboardThreeModelObj
class VendorDashboardThreeController extends GetxController {
  Rx<VendorDashboardThreeModel> vendorDashboardThreeModelObj =
      VendorDashboardThreeModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element
        in vendorDashboardThreeModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    vendorDashboardThreeModelObj.value.dropdownItemList.refresh();
  }
}
