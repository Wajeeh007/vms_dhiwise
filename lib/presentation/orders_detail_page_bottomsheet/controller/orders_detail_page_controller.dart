import 'package:vms/core/app_export.dart';
import 'package:vms/presentation/orders_detail_page_bottomsheet/models/orders_detail_page_model.dart';

/// A controller class for the OrdersDetailPageBottomsheet.
///
/// This class manages the state of the OrdersDetailPageBottomsheet, including the
/// current ordersDetailPageModelObj
class OrdersDetailPageController extends GetxController {
  Rx<OrdersDetailPageModel> ordersDetailPageModelObj =
      OrdersDetailPageModel().obs;
}
