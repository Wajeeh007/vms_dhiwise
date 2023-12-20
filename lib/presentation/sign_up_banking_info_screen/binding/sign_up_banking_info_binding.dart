import '../controller/sign_up_banking_info_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignUpBankingInfoScreen.
///
/// This class ensures that the SignUpBankingInfoController is created when the
/// SignUpBankingInfoScreen is first loaded.
class SignUpBankingInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpBankingInfoController());
  }
}
