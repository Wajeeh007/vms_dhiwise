import '../controller/payout_list_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PayoutListOneScreen.
///
/// This class ensures that the PayoutListOneController is created when the
/// PayoutListOneScreen is first loaded.
class PayoutListOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PayoutListOneController());
  }
}
