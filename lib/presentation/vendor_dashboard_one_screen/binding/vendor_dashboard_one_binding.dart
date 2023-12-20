import '../controller/vendor_dashboard_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VendorDashboardOneScreen.
///
/// This class ensures that the VendorDashboardOneController is created when the
/// VendorDashboardOneScreen is first loaded.
class VendorDashboardOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VendorDashboardOneController());
  }
}
