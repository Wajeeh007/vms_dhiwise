import '../controller/vendor_profile_submitted_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VendorProfileSubmittedOneScreen.
///
/// This class ensures that the VendorProfileSubmittedOneController is created when the
/// VendorProfileSubmittedOneScreen is first loaded.
class VendorProfileSubmittedOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VendorProfileSubmittedOneController());
  }
}
