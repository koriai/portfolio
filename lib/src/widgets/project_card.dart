import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../theme/theme.dart';

Widget projectCard(
  BuildContext context,
  String title, {
  required Uri web,
  required Image image,
  required String description,
  List<String> frontEndDescription = const [],
  List<String> backEndDescription = const [],
  List<String> cloudDescription = const [],
  List<String> packages = const [],
  Uri? ios,
  Uri? aos,
}) {
  final packagesBox = packages.map((e) => Text(e)).toList();
  final frontEndDesBox = frontEndDescription.map((e) => Text(e)).toList();
  final backEndDesBox = backEndDescription.map((e) => Text(e)).toList();
  final cloudDesBox = cloudDescription.map((e) => Text(e)).toList();

  return Card(
    child: SizedBox(
      height: projectCardHeight,
      width: projectCardWidth,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView(
          shrinkWrap: true,
          children: [
                ListTile(
                  title: Row(children: [
                    Expanded(
                      child: SizedBox(
                        height: 24,
                        child: Text(
                          title,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    (ios == null)
                        ? const SizedBox()
                        : IconButton(
                            tooltip: ios.toString(),
                            onPressed: () {
                              launchUrl(ios);
                            },
                            icon: const Icon(Icons.apple_outlined)),
                    (aos == null)
                        ? const SizedBox()
                        : IconButton(
                            tooltip: aos.toString(),
                            onPressed: () {
                              launchUrl(aos);
                            },
                            icon: const Icon(Icons.android_outlined)),
                    IconButton(
                        tooltip: web.toString(),
                        onPressed: () {
                          launchUrl(web);
                        },
                        icon: const Icon(Icons.web))
                  ]),
                  subtitle: SizedBox(height: 240, child: image),
                ),
                const SizedBox(height: 8),
                Center(
                  child: Text(description),
                ),
              ] +
              [
                if (packages.isNotEmpty) const Divider(),
              ] +
              packagesBox +
              [
                if (frontEndDescription.isNotEmpty) const Divider(),
              ] +
              frontEndDesBox +
              [
                if (backEndDescription.isNotEmpty) const Divider(),
              ] +
              backEndDesBox +
              [
                if (cloudDescription.isNotEmpty) const Divider(),
              ] +
              cloudDesBox,
        ),
      ),
    ),
  );
}
