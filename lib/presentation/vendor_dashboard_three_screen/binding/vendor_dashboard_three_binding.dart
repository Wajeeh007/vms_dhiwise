import '../controller/vendor_dashboard_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VendorDashboardThreeScreen.
///
/// This class ensures that the VendorDashboardThreeController is created when the
/// VendorDashboardThreeScreen is first loaded.
class VendorDashboardThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VendorDashboardThreeController());
  }
}
