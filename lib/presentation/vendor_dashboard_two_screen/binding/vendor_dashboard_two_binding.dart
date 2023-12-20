import '../controller/vendor_dashboard_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VendorDashboardTwoScreen.
///
/// This class ensures that the VendorDashboardTwoController is created when the
/// VendorDashboardTwoScreen is first loaded.
class VendorDashboardTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VendorDashboardTwoController());
  }
}
