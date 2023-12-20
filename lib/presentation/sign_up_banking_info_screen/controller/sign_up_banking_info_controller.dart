import 'package:vms/core/app_export.dart';import 'package:vms/presentation/sign_up_banking_info_screen/models/sign_up_banking_info_model.dart';import 'package:flutter/material.dart';/// A controller class for the SignUpBankingInfoScreen.
///
/// This class manages the state of the SignUpBankingInfoScreen, including the
/// current signUpBankingInfoModelObj
class SignUpBankingInfoController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController asharAtiquevalueController = TextEditingController();

TextEditingController valueController = TextEditingController();

TextEditingController pKMEZNvalueController = TextEditingController();

Rx<SignUpBankingInfoModel> signUpBankingInfoModelObj = SignUpBankingInfoModel().obs;

@override void onClose() { super.onClose(); nameController.dispose(); asharAtiquevalueController.dispose(); valueController.dispose(); pKMEZNvalueController.dispose(); } 
 }
