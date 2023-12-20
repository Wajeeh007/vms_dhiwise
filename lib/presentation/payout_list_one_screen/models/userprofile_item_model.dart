import '../../../core/app_export.dart';/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {UserprofileItemModel({this.userImage, this.title, this.subtitle, this.location, this.country, this.address, this.type, this.category, this.id, }) { userImage = userImage  ?? Rx(ImageConstant.imgImage6);title = title  ?? Rx("ISMMART");subtitle = subtitle  ?? Rx("/ismmartshop.com");location = location  ?? Rx("Islamabad");country = country  ?? Rx("Pakistan");address = address  ?? Rx("2118 G-8/1, Islamabad 35624");type = type  ?? Rx("Type:");category = category  ?? Rx("Home Decor, Electronics");id = id  ?? Rx(""); }

Rx<String>? userImage;

Rx<String>? title;

Rx<String>? subtitle;

Rx<String>? location;

Rx<String>? country;

Rx<String>? address;

Rx<String>? type;

Rx<String>? category;

Rx<String>? id;

 }
