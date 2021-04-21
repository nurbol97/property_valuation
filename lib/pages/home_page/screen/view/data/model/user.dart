class User {
  int userId;
  String avatar;
  String fullName;
  String phone;

  User({this.userId, this.avatar, this.fullName, this.phone});

  factory User.fromJson(Map<String, dynamic> json) => User(
        userId: json["userId"],
        avatar: json["avatar"],
        fullName: json["fullName"],
        phone: json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "avatar": avatar,
        "fullName": fullName,
        "phone": phone,
      };
}
