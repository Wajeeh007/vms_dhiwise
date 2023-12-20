import '../controller/bottom_menu_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BottomMenuScreen.
///
/// This class ensures that the BottomMenuController is created when the
/// BottomMenuScreen is first loaded.
class BottomMenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomMenuController());
  }
}
