import '../controller/bottom_menu_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BottomMenuOneScreen.
///
/// This class ensures that the BottomMenuOneController is created when the
/// BottomMenuOneScreen is first loaded.
class BottomMenuOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomMenuOneController());
  }
}
