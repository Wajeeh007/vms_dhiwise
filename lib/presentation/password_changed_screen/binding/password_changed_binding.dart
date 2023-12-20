import '../controller/password_changed_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PasswordChangedScreen.
///
/// This class ensures that the PasswordChangedController is created when the
/// PasswordChangedScreen is first loaded.
class PasswordChangedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PasswordChangedController());
  }
}
