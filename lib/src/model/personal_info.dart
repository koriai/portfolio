import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

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
            child: CachedNetworkImage(
              imageUrl: profilePicUrl,
              placeholder: (context, url) => Image.asset('profile.png'),
            ) // Image.network(profilePicUrl),
            ));
  }
}
