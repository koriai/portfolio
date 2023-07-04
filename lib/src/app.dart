import 'dart:async';
import 'dart:ui';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:intl/intl.dart';
import '../generated/l10n.dart';
import 'widgets/profile_card.dart';
import '../src/model/project_class.dart';
import '../src/pages/settings.dart';
import '../src/model/personal_info.dart';
import 'model/project_list.dart';
import '../main.dart';

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

  Reference ref = FirebaseStorage.instance.ref();
  @override
  void initState() {
    super.initState();
  }

  Future<void> openResume(Reference ref) async {
    await launchUrl(Uri.parse(
        'https://firebasestorage.googleapis.com/v0/b/portfolio-khj.appspot.com/o/angry_wolfrik.png?alt=media&token=65d06023-5f96-4780-b2e2-6b9c2f40ad7b'));
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height.toInt();
    final screenWidth = MediaQuery.of(context).size.width.toInt();
    List<Project> projects = [];

    /// initilize projects
    void initProjects() {
      projects.add(projectReport(context));
      projects.add(projectTTWRoster(context));
      projects.add(projectClips(context));
      projects.add(projectGllim(context));

      setState(() {});
    }

    initProjects();

    final condeLinkButton = Container(
      key: footerButton,
      padding: const EdgeInsets.all(1.0),
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
          )),
    );

    /// Change [themeMode] of the app
    IconButton changeThemeModeButton = IconButton(
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
        });

    /// Change [language] of the app
    IconButton changeLanuageButton = IconButton(
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
    Drawer drawer = Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 240,
            child: DrawerHeader(
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                  Text(
                    S.of(context).name,
                    style: const TextStyle(color: Colors.white),
                  ),
                  Text(
                    myProfile.email,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('Opensource License'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (context) => Theme(
                    data: Theme.of(context).copyWith(
                      scaffoldBackgroundColor: Colors.white,
                    ),
                    child: LicensePage(
                      applicationName: S.of(context).apptitle,
                      applicationVersion: '0.9.0',
                      applicationIcon: Container(
                        padding: const EdgeInsets.all(12.0),
                        height: 64,
                        width: 64,
                        child: myProfile.myCircleAvatar,
                      ),
                    )),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.mail_outline),
            title: const Text('Mail'),
            onTap: () async {
              final Uri emailLaunchUri = Uri(
                scheme: 'mailto',
                path: 'bustina9@gmail.com',
              );
              await launchUrl(emailLaunchUri);
            },
          ),
          ListTile(
            leading: const ImageIcon(
              AssetImage('assets/icons/github-mark.png'),
              size: 24,
            ),
            title: const Text('Github (this site)'),
            trailing: const Icon(Icons.open_in_new_outlined),
            onTap: () async {
              await launchUrl(Uri.parse('https://github.com/koriai/portfolio'));
            },
          ),
          ListTile(
            leading: const Icon(Icons.download_outlined),
            title: const Text('Download Resume'),
            trailing: const Icon(Icons.open_in_new_outlined),
            onTap: () async => await openResume(ref),
          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text('Settings'),
            onTap: () {
              // GoRouter.of(context).go('/settings');
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (context) => const Settings(),
                  settings: const RouteSettings(name: '/settings'),
                ),
              );
            },
          )
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).apptitle),
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
              // shrinkWrap: true,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                profile(context),
                Expanded(
                    child: ScrollConfiguration(
                  behavior:
                      ScrollConfiguration.of(context).copyWith(dragDevices: {
                    PointerDeviceKind.touch,
                    PointerDeviceKind.mouse,
                    PointerDeviceKind.trackpad,
                  }),
                  child: ListView.builder(
                      restorationId: 'project_list',
                      // prototypeItem: Card(
                      //   color: const Color.fromRGBO(207, 216, 220, 1),
                      //   child: SizedBox(
                      //     height: projectCardHeight,
                      //     width: 380,
                      //   ),
                      // ),
                      itemCount: projects.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return projects[index].card(
                            context,
                            (screenWidth < 300)
                                ? 280
                                : (screenWidth < 500)
                                    ? screenWidth - 20
                                    : 480);
                      }),
                )),
                condeLinkButton
              ],
            ),
    );
  }
}
