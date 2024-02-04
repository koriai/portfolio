import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

/// 프로필 클래스
class Profile {
  /// 이름
  static const String name = "Hyunjin Kim";

  /// 이메일
  String email = "hyunjin@koriai.com";

  /// 프로필 이미지 경로
  static const String profilePicUrl =
      "https://avatars.githubusercontent.com/u/60956934?v=4";

  /// 섴ㄹ아바타
  late final ClipOval myCircleAvatar;

  /// 프로필 초기화
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
