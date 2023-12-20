import '../../../core/app_export.dart';/// This class is used in the [griditem_item_widget] screen.
class GriditemItemModel {GriditemItemModel({this.iconShapesText, this.newOrdersText, this.id, }) { iconShapesText = iconShapesText  ?? Rx("3");newOrdersText = newOrdersText  ?? Rx("New Orders");id = id  ?? Rx(""); }

Rx<String>? iconShapesText;

Rx<String>? newOrdersText;

Rx<String>? id;

 }
