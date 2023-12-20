import '../controller/vendor_profile_submitted_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VendorProfileSubmittedTwoScreen.
///
/// This class ensures that the VendorProfileSubmittedTwoController is created when the
/// VendorProfileSubmittedTwoScreen is first loaded.
class VendorProfileSubmittedTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VendorProfileSubmittedTwoController());
  }
}
