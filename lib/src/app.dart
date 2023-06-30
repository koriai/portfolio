import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:khj/src/model/project_class.dart';
import 'package:url_launcher/url_launcher.dart';
import '../src/widgets/personal_profile.dart';
import 'package:intl/intl.dart';
import '../generated/l10n.dart';
import 'theme/theme.dart';
import 'model/project_list.dart';
import '../main.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  final GlobalKey footerButton = GlobalKey();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
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
        icon: Icon(MyApp.themeNotifier.value == ThemeMode.light
            ? Icons.dark_mode
            : Icons.light_mode),
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
      icon: const Icon(Icons.language),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).apptitle),
        centerTitle: true,
        actions: [
          changeThemeModeButton,
          changeLanuageButton,
        ],
      ),
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
                      prototypeItem: const Card(
                        color: Color.fromRGBO(207, 216, 220, 1),
                        child: SizedBox(
                          height: projectCardHeight,
                          width: projectCardWidth,
                        ),
                      ),
                      itemCount: projects.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return projects[index].card(context);
                      }),
                )),
                condeLinkButton
              ],
            ),
    );
  }
}
