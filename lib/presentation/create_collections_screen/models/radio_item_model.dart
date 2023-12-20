import '../../../core/app_export.dart';/// This class is used in the [radio_item_widget] screen.
class RadioItemModel {RadioItemModel({this.imageClass, this.text, this.id, }) { imageClass = imageClass  ?? Rx(ImageConstant.imgContrast);text = text  ?? Rx("Manual");id = id  ?? Rx(""); }

Rx<String>? imageClass;

Rx<String>? text;

Rx<String>? id;

 }
