import '../controller/payout_list_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PayoutListScreen.
///
/// This class ensures that the PayoutListController is created when the
/// PayoutListScreen is first loaded.
class PayoutListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PayoutListController());
  }
}
