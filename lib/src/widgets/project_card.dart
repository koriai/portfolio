import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../theme/theme.dart';

Widget projectCard(
  BuildContext context,
  String title, {
  Uri? web,
  required List<Image> images,
  required String description,
  List<String> frontEndDescription = const [],
  List<String> backEndDescription = const [],
  List<String> cloudDescription = const [],
  List<String> packages = const [],
  Uri? ios,
  Uri? aos,
  double? screenWidth,
}) {
  // final packagesBox = packages.map((e) => Text('  $e')).toList();
  final frontEndDesBox = frontEndDescription.map((e) => Text('  $e')).toList();
  final backEndDesBox = backEndDescription.map((e) => Text('  $e')).toList();
  final cloudDesBox = cloudDescription.map((e) => Text('  $e')).toList();
  final cardWidth = (screenWidth != null) ? screenWidth : projectCardWidth;

  final PageController pageController = PageController();
  return Card(
    child: SizedBox(
      height: projectCardHeight,
      width: cardWidth,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 12, 12, 6),
        child: ListView(
          shrinkWrap: true,
          children: [
                ListTile(
                  title: Row(children: [
                    Expanded(
                      child: SizedBox(
                        height: 36,
                        child: Text(title,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                    (ios == null && aos == null && web == null)
                        ? const SizedBox()
                        : const Text('links'),
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
                              AssetImage('assets/icons/android.png'),
                              size: 24,
                            )),
                    (web == null)
                        ? const SizedBox()
                        : IconButton(
                            tooltip: web.toString(),
                            disabledColor: Colors.white,
                            onPressed: () async {
                              await launchUrl(web);
                            },
                            icon: const ImageIcon(
                              AssetImage('assets/icons/web.png'),
                              size: 24,
                            )),
                  ]),
                  subtitle: SizedBox(
                    height: 240,
                    width: cardWidth,
                    child: PageView(
                      controller: pageController,
                      physics: const NeverScrollableScrollPhysics(),
                      children: List.generate(images.length, (index) {
                        final image = images[index];
                        return Center(
                          child: ListTile(
                            leading: (index == 0)
                                ? null
                                : IconButton(
                                    icon: const Icon(Icons.arrow_back),
                                    onPressed: () {
                                      pageController.previousPage(
                                          duration:
                                              const Duration(milliseconds: 500),
                                          curve: Curves.ease);
                                    },
                                  ),
                            title: SizedBox(height: 240, child: image),
                            trailing: (index == images.length - 1)
                                ? null
                                : IconButton(
                                    icon: const Icon(Icons.arrow_forward),
                                    onPressed: () {
                                      pageController.nextPage(
                                          duration:
                                              const Duration(milliseconds: 500),
                                          curve: Curves.ease);
                                    },
                                  ),
                          ),
                        );
                      }),
                    ),
                  ),
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
                  const Text.rich(
                    TextSpan(children: [
                      WidgetSpan(
                          child: Icon(
                        Icons.phone_android_outlined,
                        size: 16,
                      )),
                      TextSpan(
                        text: " Front-end",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ]),
                  ),
                if (frontEndDescription.isNotEmpty) const SizedBox(height: 8),
              ] +
              frontEndDesBox +
              [
                if (backEndDescription.isNotEmpty) const Divider(),
                if (backEndDescription.isNotEmpty)
                  const Text.rich(
                    TextSpan(children: [
                      WidgetSpan(
                          child: Icon(
                        Icons.storage_sharp,
                        size: 16,
                      )),
                      TextSpan(
                        text: " Back-end",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ]),
                  ),
                if (backEndDescription.isNotEmpty) const SizedBox(height: 8),
              ] +
              backEndDesBox +
              [
                if (cloudDescription.isNotEmpty) const Divider(),
                if (cloudDescription.isNotEmpty)
                  const Text.rich(
                    TextSpan(children: [
                      WidgetSpan(
                          child: Icon(
                        Icons.cloud_circle_rounded,
                        size: 16,
                      )),
                      TextSpan(
                        text: " Cloud",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ]),
                  ),
                if (cloudDescription.isNotEmpty) const SizedBox(height: 8),
              ] +
              cloudDesBox,
        ),
      ),
    ),
  );
}
