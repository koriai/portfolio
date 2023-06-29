import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../theme/theme.dart';
import '../../generated/l10n.dart';

Widget projectCard(
  BuildContext context,
  String title, {
  required Uri web,
  required Image image,
  required String description,
  List<String> packages = const [],
  Uri? ios,
  Uri? aos,
}) {
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
                  const Divider(),
                  Center(
                    child: Text(S.of(context).packagesTitle),
                  ),
                ] +
                packages.map((e) => Text(e)).toList(),
          )),
    ),
  );
}
