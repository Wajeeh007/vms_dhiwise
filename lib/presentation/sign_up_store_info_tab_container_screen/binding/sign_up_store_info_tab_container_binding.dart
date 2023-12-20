import '../controller/sign_up_store_info_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignUpStoreInfoTabContainerScreen.
///
/// This class ensures that the SignUpStoreInfoTabContainerController is created when the
/// SignUpStoreInfoTabContainerScreen is first loaded.
class SignUpStoreInfoTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpStoreInfoTabContainerController());
  }
}
