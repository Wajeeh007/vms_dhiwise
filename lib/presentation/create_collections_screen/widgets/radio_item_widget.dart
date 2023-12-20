import '../controller/create_collections_controller.dart';
import '../models/radio_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vms/core/app_export.dart';

// ignore: must_be_immutable
class RadioItemWidget extends StatelessWidget {
  RadioItemWidget(
    this.radioItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RadioItemModel radioItemModelObj;

  var controller = Get.find<CreateCollectionsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: radioItemModelObj.imageClass!.value,
              height: 19.v,
              width: 16.h,
              margin: EdgeInsets.only(bottom: 43.v),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 8.h,
                top: 2.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      radioItemModelObj.text!.value,
                      style: CustomTextStyles.titleSmallGray900_1,
                    ),
                  ),
                  SizedBox(height: 6.v),
                  SizedBox(
                    width: 243.h,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_add_products_to2".tr,
                            style: CustomTextStyles.bodySmallGray60001,
                          ),
                          TextSpan(
                            text: "msg_manual_collections".tr,
                            style: CustomTextStyles.bodySmallPrimary,
                          ),
                          TextSpan(
                            text: "lbl3".tr,
                            style: CustomTextStyles.bodySmallGray60001,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
