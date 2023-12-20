import '../../../core/app_export.dart';/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {Userprofile1ItemModel({this.linkedin, this.beverlyCenter, this.text1, this.islamabad, this.pakistan, this.address, this.phoneNumber, this.lastUpdated, this.date, this.id, }) { linkedin = linkedin  ?? Rx(ImageConstant.imgLinkedin);beverlyCenter = beverlyCenter  ?? Rx("Beverly Center");text1 = text1  ?? Rx("Active");islamabad = islamabad  ?? Rx("Islamabad");pakistan = pakistan  ?? Rx("Pakistan");address = address  ?? Rx("2118 G-8/1, Islamabad 35624");phoneNumber = phoneNumber  ?? Rx("(307) 555-0133");lastUpdated = lastUpdated  ?? Rx("Last updated");date = date  ?? Rx("April 23, 2023");id = id  ?? Rx(""); }

Rx<String>? linkedin;

Rx<String>? beverlyCenter;

Rx<String>? text1;

Rx<String>? islamabad;

Rx<String>? pakistan;

Rx<String>? address;

Rx<String>? phoneNumber;

Rx<String>? lastUpdated;

Rx<String>? date;

Rx<String>? id;

 }
