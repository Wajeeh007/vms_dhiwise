import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:vms/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Payout List One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.payoutListOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Vendor Profile Submitted".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.vendorProfileSubmittedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign Up - Basic Info".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpBasicInfoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "Sign Up - Store Info - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.signUpStoreInfoTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verification link".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.verificationLinkScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Vendor Dashboard".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.vendorDashboardScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Create location".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.createLocationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Vendor Profile Submitted One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.vendorProfileSubmittedOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Create Order | No Product".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.createOrderNoProductScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Create Order | With Product".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.createOrderWithProductScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Edit location".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editLocationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign Up - Banking Info".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.signUpBankingInfoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Set Variants".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.setVariantsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Create location One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.createLocationOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verification".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.verificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sidebar ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.sidebarScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Vendor Dashboard One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.vendorDashboardOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Create Payout".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.createPayoutScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Vendor Dashboard Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.vendorDashboardTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Create Payout One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.createPayoutOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Vendor Dashboard Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.vendorDashboardThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Splash Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "create Product | Variants".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.createProductVariantsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Password Changed".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.passwordChangedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "bottom menu".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.bottomMenuScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Location list".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.locationListScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Create Collections".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.createCollectionsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Create Collections One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.createCollectionsOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Collections".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.collectionsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Set Price".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.setPriceScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Vendor Profile Submitted Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.vendorProfileSubmittedTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Orders List".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.ordersListScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "create Product | Inventory & Shipping".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.createProductInventoryShippingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "bottom menu One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.bottomMenuOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Splash Screen One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign Up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verification One - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.verificationOneTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "create Product | Inventory & Shipping One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .createProductInventoryShippingOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Product List".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.productListScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payout List".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.payoutListScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Store list".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.storeListScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "create Product | Product Info - Tab Container"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .createProductProductInfoTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "create Product | Inventory & Shipping Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .createProductInventoryShippingTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Forget Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgetPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Orders - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.ordersTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Orders Detail Page One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.ordersDetailPageOneScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
