import '../../../core/app_export.dart';/// This class is used in the [createcollectionlist_item_widget] screen.
class CreatecollectionlistItemModel {CreatecollectionlistItemModel({this.collectionImage, this.collectionName, this.id, }) { collectionImage = collectionImage  ?? Rx(ImageConstant.imgImage638x38);collectionName = collectionName  ?? Rx("ISMMART");id = id  ?? Rx(""); }

Rx<String>? collectionImage;

Rx<String>? collectionName;

Rx<String>? id;

 }
