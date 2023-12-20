import '../controller/verification_one_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VerificationOneTabContainerScreen.
///
/// This class ensures that the VerificationOneTabContainerController is created when the
/// VerificationOneTabContainerScreen is first loaded.
class VerificationOneTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerificationOneTabContainerController());
  }
}
