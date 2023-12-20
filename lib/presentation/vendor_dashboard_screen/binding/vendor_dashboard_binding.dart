import '../controller/vendor_dashboard_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VendorDashboardScreen.
///
/// This class ensures that the VendorDashboardController is created when the
/// VendorDashboardScreen is first loaded.
class VendorDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VendorDashboardController());
  }
}
