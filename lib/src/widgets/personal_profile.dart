import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../generated/l10n.dart';

profile(BuildContext context) {
  return Semantics(
    container: true,
    label: 'profile',
    tooltip: "Hyunjin's Profile",
    child: Card(
      margin: const EdgeInsets.all(8.0),
      child: ListView(
        shrinkWrap: true,
        children: [
          const SizedBox(height: 8),
          CircleAvatar(
            child: CachedNetworkImage(
                imageUrl:
                    'https://avatars.githubusercontent.com/u/60956934?v=4'),
          ),
          Center(
            child: SizedBox(
              height: 24,
              child: Text(S.of(context).name),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// email
              IconButton(
                tooltip: 'send email',
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
                  await launchUrl(Uri.parse(''));
                },
                icon: const Icon(Icons.abc),
              ),

              /// linkedIn
              IconButton(
                tooltip: 'LinkedIn',
                onPressed: () async {
                  await launchUrl(Uri.parse(''));
                },
                icon: const Icon(Icons.abc),
              ),

              /// Instagram
              IconButton(
                tooltip: 'Instagram',
                onPressed: () async {
                  await launchUrl(Uri.parse(''));
                },
                icon: const Icon(Icons.abc),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
