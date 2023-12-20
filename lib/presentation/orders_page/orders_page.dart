import '../orders_page/widgets/griditem_item_widget.dart';import 'controller/orders_controller.dart';import 'models/griditem_item_model.dart';import 'models/orders_model.dart';import 'package:flutter/material.dart';import 'package:vms/core/app_export.dart';
// ignore_for_file: must_be_immutable
class OrdersPage extends StatelessWidget {OrdersPage({Key? key}) : super(key: key);

OrdersController controller = Get.put(OrdersController(OrdersModel().obs));

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 24.v), _buildGridItem()])))); } 
/// Section Widget
Widget _buildGridItem() { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Obx(() => GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 101.v, crossAxisCount: 3, mainAxisSpacing: 13.h, crossAxisSpacing: 13.h), physics: NeverScrollableScrollPhysics(), itemCount: controller.ordersModelObj.value.griditemItemList.value.length, itemBuilder: (context, index) {GriditemItemModel model = controller.ordersModelObj.value.griditemItemList.value[index]; return GriditemItemWidget(model, onTapItem: () {onTapItem();});}))); } 
/// Navigates to the ordersListScreen when the action is triggered.
onTapItem() { Get.toNamed(AppRoutes.ordersListScreen, ); } 
 }
