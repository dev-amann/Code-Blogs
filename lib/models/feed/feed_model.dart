import 'package:code_blogs/utils/images.dart';
import 'package:code_blogs/utils/strings.dart';

class FeedModel {
  String? id;
  String? userId;
  String? title;
  String? description;
  String? postImage;
  String? username;
  String? userPic;
  String? address;
  String? createdAt;
  String? modifiedAt;

  FeedModel(
      {required this.id,
      required this.userId,
      required this.title,
      required this.description,
      required this.postImage,
      required this.username,
      required this.userPic,
      required this.address,
      required this.createdAt,
      required this.modifiedAt});
}

List<FeedModel> feedList = [
  FeedModel(
      id: 'x',
      userId: "xy",
      title: Str.title1,
      description: Str.title1,
      postImage: Images.postImage1,
      username: "aman",
      userPic: Images.demoUserImage1,
      address: "Noida",
      createdAt: "Feb 21, 2002",
      modifiedAt: "Mar 2, 2021"),
  FeedModel(
      id: 'x',
      userId: "xy",
      title: Str.title2,
      description: Str.title2,
      postImage: Images.postImage2,
      username: "vishal",
      userPic: Images.demoUserImage2,
      address: "Noida",
      createdAt: "Apr 21, 2008",
      modifiedAt: "Jan 2, 2022"),
  FeedModel(
      id: 'x',
      userId: "xy",
      title: Str.title3,
      description: Str.title3,
      postImage: Images.postImage3,
      username: "nik.jhon",
      userPic: Images.demoUserImage3,
      address: "Noida",
      createdAt: "Feb 21, 2002",
      modifiedAt: "Mar 2, 2021"),
  FeedModel(
      id: 'x',
      userId: "xy",
      title: Str.title2,
      description: Str.title2,
      postImage: Images.postImage4,
      username: "dev.sat",
      userPic: Images.demoUserImage4,
      address: "Noida",
      createdAt: "Feb 21, 2010",
      modifiedAt: "Feb 2, 2022"),
  FeedModel(
      id: 'x',
      userId: "xy",
      title: Str.title1,
      description: Str.title1,
      postImage: Images.postImage5,
      username: "luk.reta",
      userPic: Images.demoUserImage5,
      address: "Noida",
      createdAt: "Feb 21, 2002",
      modifiedAt: "Mar 2, 2021"),
  FeedModel(
      id: 'x',
      userId: "xy",
      title: Str.title2,
      description: Str.title2,
      postImage: Images.postImage6,
      username: "sunny",
      userPic: Images.demoUserImage6,
      address: "Noida",
      createdAt: "Apr 21, 2008",
      modifiedAt: "Jan 2, 2022"),
  FeedModel(
      id: 'x',
      userId: "xy",
      title: Str.title3,
      description: Str.title3,
      postImage: Images.postImage7,
      username: "coder.brain",
      userPic: Images.demoUserImage7,
      address: "Noida",
      createdAt: "Feb 21, 2010",
      modifiedAt: "Feb 2, 2022"),
];
