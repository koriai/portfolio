import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../theme/theme.dart';

/// 프로젝트 카드 클래스
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

  /// ios 버튼
  final iosButton = (ios == null)
      ? const SizedBox()
      : IconButton(
          tooltip: ios.toString(),
          onPressed: () async {
            await launchUrl(ios);
          },
          icon: const Icon(Icons.apple_outlined));

  /// 안드로이드 버튼
  final aosButton = (aos == null)
      ? const SizedBox()
      : IconButton(
          tooltip: aos.toString(),
          onPressed: () async {
            await launchUrl(aos);
          },
          icon: const ImageIcon(
            AssetImage('assets/icons/android.png'),
            size: 24,
          ));

  /// 웹버전 버튼
  final webButton = (web == null)
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
          ));

  /// 프론트엔트 박스
  List<Widget> frontendBox = [];
  if (frontEndDescription.isNotEmpty) {
    frontendBox.addAll(<Widget>[
          const Divider(),
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
          const SizedBox(height: 8),
        ] +
        frontEndDesBox);
  }

  /// 백엔드
  List<Widget> backendBox = [];
  if (backEndDescription.isNotEmpty) {
    backendBox.addAll(<Widget>[
          const Divider(),
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
          const SizedBox(height: 8),
        ] +
        backEndDesBox);
  }

  /// 클라우드
  List<Widget> cloudBox = [];
  if (cloudDescription.isNotEmpty) {
    cloudBox.addAll(<Widget>[
          const Divider(),
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
          const SizedBox(height: 8),
        ] +
        cloudDesBox);
  }

  /// return project card with  ios,aos,web buttons
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
                    iosButton,
                    aosButton,
                    webButton,
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
                            title: SizedBox(
                                height: 240,
                                child: InkWell(
                                  child: Container(child: image),
                                  onTap: () async {
                                    await showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            content: image,
                                            actions: [
                                              ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: const Text('close'))
                                            ],
                                          );
                                        });
                                  },
                                )),
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
                Center(child: Text(description)),
              ] +
              frontendBox +
              backendBox +
              cloudBox,
        ),
      ),
    ),
  );
}
