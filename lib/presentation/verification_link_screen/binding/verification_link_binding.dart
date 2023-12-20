import '../controller/verification_link_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VerificationLinkScreen.
///
/// This class ensures that the VerificationLinkController is created when the
/// VerificationLinkScreen is first loaded.
class VerificationLinkBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerificationLinkController());
  }
}
