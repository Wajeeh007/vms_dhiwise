import '../store_list_screen/widgets/createcollectionlist_item_widget.dart';
import 'controller/store_list_controller.dart';
import 'models/createcollectionlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vms/core/app_export.dart';

// ignore_for_file: must_be_immutable
class StoreListScreen extends GetWidget<StoreListController> {
  const StoreListScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 337.h,
          child: Column(
            children: [
              Container(
                height: 1.v,
                width: 337.h,
                decoration: BoxDecoration(
                  color: appTheme.whiteA700,
                ),
              ),
              SizedBox(height: 68.v),
              _buildCreateCollectionList(),
              SizedBox(height: 543.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 23.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgCogGray600,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 16.h,
                          top: 3.v,
                        ),
                        child: Text(
                          "lbl_settings".tr,
                          style: CustomTextStyles.titleMediumGray600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCreateCollectionList() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 1.v,
            );
          },
          itemCount: controller.storeListModelObj.value
              .createcollectionlistItemList.value.length,
          itemBuilder: (context, index) {
            CreatecollectionlistItemModel model = controller.storeListModelObj
                .value.createcollectionlistItemList.value[index];
            return CreatecollectionlistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
