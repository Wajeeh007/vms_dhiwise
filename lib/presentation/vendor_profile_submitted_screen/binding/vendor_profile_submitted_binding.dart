import '../controller/vendor_profile_submitted_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VendorProfileSubmittedScreen.
///
/// This class ensures that the VendorProfileSubmittedController is created when the
/// VendorProfileSubmittedScreen is first loaded.
class VendorProfileSubmittedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VendorProfileSubmittedController());
  }
}
