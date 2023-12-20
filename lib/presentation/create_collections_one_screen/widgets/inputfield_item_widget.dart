import '../models/inputfield_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vms/core/app_export.dart';

// ignore: must_be_immutable
class InputfieldItemWidget extends StatelessWidget {
  InputfieldItemWidget(
    this.inputfieldItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  InputfieldItemModel inputfieldItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 19.h,
          vertical: 10.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          inputfieldItemModelObj.button!.value,
          style: TextStyle(
            color: (inputfieldItemModelObj.isSelected?.value ?? false)
                ? appTheme.gray5001
                : appTheme.gray90001,
            fontSize: 14.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
          ),
        ),
        selected: (inputfieldItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.gray5001,
        selectedColor: appTheme.blueGray30001,
        shape: (inputfieldItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.gray20001,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(8.h),
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.gray20001,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(8.h),
                ),
              ),
        onSelected: (value) {
          inputfieldItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
