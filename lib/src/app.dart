import 'dart:async';
import 'dart:ui';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../generated/l10n.dart';
import '../main.dart';
import '../src/model/personal_info.dart';
import '../src/model/project_class.dart';
import '../src/pages/settings.dart';
import 'model/project_list.dart';
import 'widgets/profile_card.dart';

/// resume 파일경로
const resumeFileRef =
    'https://firebasestorage.googleapis.com/v0/b/portfolio-khj.appspot.com/o/portfolio-khj.pdf?alt=media&token=2b94c7c2-8dd8-4657-b180-2d59794776d7';

/// 포트폴리오
class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  final GlobalKey footerButton = GlobalKey();
  final myProfile = Profile();

  // Reference ref = FirebaseStorage.instance.ref().child('hyunjin-resume');
  // Reference ref = FirebaseStorage.instance
  //     .refFromURL("gs://portfolio-khj.appspot.com/angry_wolfrik.png");

  /// 파이어베이스 스토리지
  Reference ref = FirebaseStorage.instance.ref();

  /// Open resume
  Future<void> openResume(Reference ref) async {
    await launchUrl(Uri.parse(resumeFileRef));
  }

  @override
  Widget build(BuildContext context) {
    /// 화면 높이
    final screenHeight = MediaQuery.of(context).size.height.toInt();

    /// 화면 너비
    final screenWidth = MediaQuery.of(context).size.width.toInt();

    /// 프로젝트 목록
    final List<Project> projects = [];

    /// initilize projects
    void initProjects() {
      projects
        ..add(projectAdaptiveExtensions(context))
        ..add(projectReport(context))
        ..add(projectTTWRoster(context))
        ..add(projectClips(context))
        ..add(projectGllim(context));

      setState(() {});
    }

    initProjects();

    /// 코드 링크 버튼
    final codeLinkButton = Container(
      key: footerButton,
      padding: const EdgeInsets.all(1),
      width: double.infinity,
      height: 36,
      color: Colors.blueGrey,
      child: Align(
        alignment: Alignment.centerRight,
        child: InkWell(
          borderRadius: BorderRadius.zero,
          onTap: () async {
            await launchUrl(Uri.parse('https://github.com/koriai/portfolio'));
          },
          child: const Text(
            'You can find the code of this page, Click here  ',
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
              backgroundColor: Colors.blueGrey,
            ),
          ),
        ),
      ),
    );

    /// Change [themeMode] of the app
    final IconButton changeThemeModeButton = IconButton(
      icon: Icon(
        MyApp.themeNotifier.value == ThemeMode.light
            ? Icons.dark_mode
            : Icons.light_mode,
        color: Colors.white,
      ),
      onPressed: () {
        setState(() {
          MyApp.themeNotifier.value =
              MyApp.themeNotifier.value == ThemeMode.light
                  ? ThemeMode.dark
                  : ThemeMode.light;
        });
      },
    );

    /// Change [language] of the app
    final IconButton changeLanuageButton = IconButton(
      onPressed: () {
        setState(() {
          if (Intl.getCurrentLocale() == 'en') {
            S.load(const Locale('ko'));
          } else {
            S.load(const Locale('en'));
          }
        });
      },
      icon: const Icon(Icons.language, color: Colors.white),
    );

    /// Drawer of the app
    final Drawer drawer = Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          /// DrawerHeader
          SizedBox(
            height: 240,
            child: DrawerHeader(
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      const Expanded(child: SizedBox()),
                      changeThemeModeButton,
                      changeLanuageButton,
                    ],
                  ),
                  SizedBox(
                    height: 64,
                    width: 64,
                    child: myProfile.myCircleAvatar,
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 36,
                    child: Text(
                      S.of(context).name,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  Text(
                    myProfile.email,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),

          /// Drawer Menu Items
          ListTile(
            leading: const Icon(Icons.home),
            title: Text(S.of(context).home),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: Text(S.of(context).openSourceLicense),
            onTap: () async => Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (context) => Theme(
                  data: Theme.of(context).copyWith(
                    scaffoldBackgroundColor: Colors.white,
                  ),
                  child: LicensePage(
                    applicationName: S.of(context).apptitle,
                    applicationVersion: '0.9.0',
                    applicationIcon: Container(
                      padding: const EdgeInsets.all(12),
                      height: 64,
                      width: 64,
                      child: myProfile.myCircleAvatar,
                    ),
                  ),
                ),
              ),
            ),
          ),

          /// send email to me
          Tooltip(
            message: 'mailto://bustina9@gmail.com',
            child: ListTile(
              leading: const Icon(Icons.mail),
              title: Text(S.of(context).mail),
              onTap: () async {
                final Uri emailLaunchUri = Uri(
                  scheme: 'mailto',
                  path: 'bustina9@gmail.com',
                );
                await launchUrl(emailLaunchUri);
              },
            ),
          ),

          /// go to my github
          Tooltip(
            message: 'https://github.com/koriai/portfolio',
            child: ListTile(
              leading: const ImageIcon(
                AssetImage('assets/icons/github-mark.png'),
                size: 24,
              ),
              title: const Text('Github (source of this site)'),
              trailing: const Icon(Icons.open_in_new_outlined),
              onTap: () async {
                await launchUrl(
                  Uri.parse('https://github.com/koriai/portfolio'),
                );
              },
            ),
          ),

          /// get my resume
          ListTile(
            leading: const Icon(Icons.download),
            title: Text(S.of(context).resume),
            trailing: const Icon(Icons.open_in_new_outlined),
            onTap: () async => await openResume(ref),
          ),

          /// go settings page
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text(S.of(context).settings),
            onTap: () {
              // GoRouter.of(context).go('/settings');
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (context) => const Settings(),
                  settings: const RouteSettings(name: '/settings'),
                ),
              );
            },
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).apptitle,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        ),
        centerTitle: true,
        // actions: [
        //   changeThemeModeButton,
        //   changeLanuageButton,
        // ],
      ),
      drawer: drawer,
      body: (screenHeight < 300)
          ? const Center(
              child: Text('Window is too narrow!! T-T'),
            )
          : Column(
              children: <Widget>[
                profile(context),
                Expanded(
                  child: ScrollConfiguration(
                    behavior: ScrollConfiguration.of(context).copyWith(
                      dragDevices: {
                        PointerDeviceKind.touch,
                        PointerDeviceKind.mouse,
                        PointerDeviceKind.trackpad,
                      },
                    ),
                    child: ListView.builder(
                      restorationId: 'project_list',
                      itemCount: projects.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => projects[index].card(
                        context,
                        (screenWidth < 300)
                            ? 280
                            : (screenWidth < 500)
                                ? screenWidth - 20
                                : 480,
                      ),
                    ),
                  ),
                ),
                codeLinkButton,
              ],
            ),
    );
  }
}
