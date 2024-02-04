import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../generated/l10n.dart';

/// my profile page
profile(BuildContext context) {
  /// screen width
  final screenWidth = MediaQuery.of(context).size.width.toInt();

  /// my circleavartar
  final myCircleAvatar = ClipOval(
      child: CircleAvatar(
    minRadius: 24,
    child: CachedNetworkImage(
        imageUrl: 'https://avatars.githubusercontent.com/u/60956934?v=4'),
  ));

  /// my sns buttons
  final snsButtons = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      /// email
      IconButton(
        tooltip: 'Send email',
        onPressed: () async {
          final Uri emailLaunchUri = Uri(
            scheme: 'mailto',
            path: 'bustina9@gmail.com',
          );
          await launchUrl(emailLaunchUri);
        },
        icon: const Icon(Icons.mail),
      ),

      /// Github
      IconButton(
        tooltip: 'Github',
        onPressed: () async {
          await launchUrl(Uri.parse('https://github.com/koriai'));
        },
        icon: const ImageIcon(
          AssetImage('assets/icons/github-mark.png'),
          size: 24,
        ),
      ),

      /// linkedIn
      IconButton(
        tooltip: 'LinkedIn',
        onPressed: () async {
          await launchUrl(Uri.parse('https://www.linkedin.com/in/khi999/'));
        },
        icon: const ImageIcon(
          AssetImage('assets/icons/LI-In-Bug.png'),
          size: 24,
        ),
      ),

      /// tistory
      // IconButton(
      //   tooltip: 'tistory blog',
      //   onPressed: () async {
      //     await launchUrl(Uri.parse('https://floss.tistory.com'));
      //   },
      //   icon: const ImageIcon(
      //     AssetImage('icons/tistory_icon.png'),
      //     size: 24,
      //   ),
      // ),

      // /// Instagram
      // IconButton(
      //   tooltip: 'Instagram',
      //   onPressed: () async {
      //     await launchUrl(Uri.parse(''));
      //   },
      //   icon: const Icon(Icons.abc),
      // ),
    ],
  );

  return Semantics(
    container: true,
    label: 'profile',
    tooltip: "Hyunjin's Profile",
    child: SizedBox(
        height: 120,
        width: double.infinity,
        child: Card(
            margin: const EdgeInsets.all(8.0),
            child: (screenWidth < 300)
                ? myCircleAvatar
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      myCircleAvatar,
                      Expanded(
                        child: ListTile(
                          title: Text(
                            S.of(context).name,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: const Text('bustina9@gmaill.com'),
                        ),
                      ),
                      snsButtons,
                    ],
                  ))),
  );
}
