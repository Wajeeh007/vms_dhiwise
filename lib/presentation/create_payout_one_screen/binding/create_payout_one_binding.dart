import '../controller/create_payout_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreatePayoutOneScreen.
///
/// This class ensures that the CreatePayoutOneController is created when the
/// CreatePayoutOneScreen is first loaded.
class CreatePayoutOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreatePayoutOneController());
  }
}
