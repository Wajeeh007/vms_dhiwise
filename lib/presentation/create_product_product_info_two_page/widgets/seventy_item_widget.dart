import '../models/seventy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vms/core/app_export.dart';

// ignore: must_be_immutable
class SeventyItemWidget extends StatelessWidget {
  SeventyItemWidget(
    this.seventyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SeventyItemModel seventyItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.only(
          left: 6.h,
          top: 3.v,
          bottom: 3.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          seventyItemModelObj.user!.value,
          style: TextStyle(
            color: appTheme.gray90001,
            fontSize: 12.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
          ),
        ),
        deleteIcon: CustomImageView(
          imagePath: ImageConstant.imgXBlueGray30001,
          height: 12.adaptSize,
          width: 12.adaptSize,
          margin: EdgeInsets.only(left: 4.h),
        ),
        onDeleted: () {},
        selected: (seventyItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.gray20001,
        selectedColor: appTheme.gray20001,
        shape: (seventyItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.gray90001.withOpacity(0.6),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  4.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  4.h,
                ),
              ),
        onSelected: (value) {
          seventyItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
