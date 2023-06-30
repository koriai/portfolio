import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../generated/l10n.dart';
import '../theme/theme.dart';

Widget projectCard(
  BuildContext context,
  String title, {
  Uri? web,
  required Image image,
  required String description,
  List<String> frontEndDescription = const [],
  List<String> backEndDescription = const [],
  List<String> cloudDescription = const [],
  List<String> packages = const [],
  Uri? ios,
  Uri? aos,
}) {
  // final packagesBox = packages.map((e) => Text('  $e')).toList();
  final frontEndDesBox = frontEndDescription.map((e) => Text('  $e')).toList();
  final backEndDesBox = backEndDescription.map((e) => Text('  $e')).toList();
  final cloudDesBox = cloudDescription.map((e) => Text('  $e')).toList();

  return Card(
    child: SizedBox(
      height: projectCardHeight,
      width: projectCardWidth,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 12, 12, 6),
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
                            onPressed: () async {
                              await launchUrl(ios);
                            },
                            icon: const Icon(Icons.apple_outlined)),
                    (aos == null)
                        ? const SizedBox()
                        : IconButton(
                            tooltip: aos.toString(),
                            onPressed: () async {
                              await launchUrl(aos);
                            },
                            icon: const ImageIcon(
                              AssetImage('icons/android.png'),
                              size: 24,
                            )),
                    (web == null)
                        ? const SizedBox()
                        : IconButton(
                            tooltip: web.toString(),
                            onPressed: () async {
                              await launchUrl(web);
                            },
                            icon: const ImageIcon(
                              AssetImage('icons/web.png'),
                              size: 24,
                            )),
                  ]),
                  subtitle: SizedBox(height: 240, child: image),
                ),
                const SizedBox(height: 8),
                Center(
                  child: Text(description),
                ),
              ] +
              // [
              //   if (packages.isNotEmpty) const Divider(),
              //   if (packages.isNotEmpty) Text(S.of(context).packagesTitle),
              // ] +
              // packagesBox +
              [
                if (frontEndDescription.isNotEmpty) const Divider(),
                if (frontEndDescription.isNotEmpty)
                  Text(
                    S.of(context).frontendTitle,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
              ] +
              frontEndDesBox +
              [
                if (backEndDescription.isNotEmpty) const Divider(),
                if (backEndDescription.isNotEmpty)
                  Text(
                    S.of(context).backendTitle,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
              ] +
              backEndDesBox +
              [
                if (cloudDescription.isNotEmpty) const Divider(),
                if (cloudDescription.isNotEmpty)
                  Text(
                    S.of(context).cloudTitle,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
              ] +
              cloudDesBox,
        ),
      ),
    ),
  );
}
