import 'package:vms/core/app_export.dart';import 'package:vms/presentation/sign_up_basic_info_screen/models/sign_up_basic_info_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';/// A controller class for the SignUpBasicInfoScreen.
///
/// This class manages the state of the SignUpBasicInfoScreen, including the
/// current signUpBasicInfoModelObj
class SignUpBasicInfoController extends GetxController {TextEditingController fullNameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

TextEditingController cNICNovalueController = TextEditingController();

TextEditingController passwordController = TextEditingController();

TextEditingController confirmpasswordController = TextEditingController();

TextEditingController nofilechosenvalueController = TextEditingController();

TextEditingController nofilechosenvalueController1 = TextEditingController();

Rx<SignUpBasicInfoModel> signUpBasicInfoModelObj = SignUpBasicInfoModel().obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('92').obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> isShowPassword1 = true.obs;

Rx<bool> checkBox = false.obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); fullNameController.dispose(); emailController.dispose(); phoneNumberController.dispose(); cNICNovalueController.dispose(); passwordController.dispose(); confirmpasswordController.dispose(); nofilechosenvalueController.dispose(); nofilechosenvalueController1.dispose(); } 
onSelected(dynamic value) { for (var element in signUpBasicInfoModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} signUpBasicInfoModelObj.value.dropdownItemList.refresh(); } 
 }
