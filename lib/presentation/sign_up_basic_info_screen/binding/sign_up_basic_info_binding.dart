import '../controller/sign_up_basic_info_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignUpBasicInfoScreen.
///
/// This class ensures that the SignUpBasicInfoController is created when the
/// SignUpBasicInfoScreen is first loaded.
class SignUpBasicInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpBasicInfoController());
  }
}
