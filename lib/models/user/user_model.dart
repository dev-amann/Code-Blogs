class UserModel {
  String? userId;
  String? username;
  String? firstName;
  String? lastName;
  String? email;
  String? phone;
  String? profilePic;
  String? github;
  String? linkedIn;
  bool? isVerified;
  String? lastLoggedIn;
  String? createdAt;
  String? modifiedAt;

  UserModel(
      {this.userId,
      this.username,
      this.firstName,
      this.lastName,
      this.email,
      this.phone,
      this.profilePic,
      this.github,
      this.linkedIn,
      this.isVerified,
      this.lastLoggedIn,
      this.createdAt,
      this.modifiedAt});
}
