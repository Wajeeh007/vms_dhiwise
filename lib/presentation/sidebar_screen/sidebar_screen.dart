import 'controller/sidebar_controller.dart';
import 'package:flutter/material.dart';
import 'package:vms/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SidebarScreen extends GetWidget<SidebarController> {
  const SidebarScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 250.h,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 1205.v,
              child: VerticalDivider(
                width: 250.h,
                thickness: 250.v,
                color: appTheme.gray200,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
