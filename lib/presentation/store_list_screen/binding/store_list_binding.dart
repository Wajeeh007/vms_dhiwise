import '../controller/store_list_controller.dart';
import 'package:get/get.dart';

/// A binding class for the StoreListScreen.
///
/// This class ensures that the StoreListController is created when the
/// StoreListScreen is first loaded.
class StoreListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StoreListController());
  }
}
