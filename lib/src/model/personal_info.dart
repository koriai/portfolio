import 'package:flutter/material.dart';

class Profile {
  static const String name = "Hyunjin Kim";
  String email = "hyunjin@koriai.com";
  static const String profilePicUrl =
      "https://avatars.githubusercontent.com/u/60956934?v=4";

  late final ClipOval myCircleAvatar;

  Profile() {
    myCircleAvatar = ClipOval(
        child: CircleAvatar(
      minRadius: 24,
      child: Image.network(profilePicUrl),
    ));
  }
}
