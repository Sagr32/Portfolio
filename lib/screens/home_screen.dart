import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants/constants.dart';
import 'projects_screen.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/menu_text_button.dart';
import '../widgets/project_card.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final queryData = MediaQuery.of(context);
    return Scaffold(
      appBar: const CustomAppBar(
        appBarTitle: kHomeLabel,
      ),
      drawer: const CustomDrawer(),
      body: ListView(
        children: [
          ResponsiveRowColumn(
            rowMainAxisAlignment: MainAxisAlignment.center,
            rowPadding: const EdgeInsets.all(30),
            columnPadding: const EdgeInsets.all(30),
            layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            children: [
              ResponsiveRowColumnItem(
                rowFlex: 1,
                child: SizedBox(
                  height: queryData.size.height / 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Hi , I\'m Mohamed Sakr',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      Text(
                        'Flutter developer',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          IconButton(
                            onPressed: () async {
                              await canLaunch(kGithubLink)
                                  ? await launch(kGithubLink)
                                  : throw 'Could not launch GithubLink';
                            },
                            icon: const Icon(FontAwesomeIcons.github),
                          ),
                          IconButton(
                            onPressed: () async {
                              await canLaunch(kLinkedinLink)
                                  ? await launch(kLinkedinLink)
                                  : throw 'Could not launch LinkedinLink';
                            },
                            icon: const Icon(FontAwesomeIcons.linkedin),
                          ),
                          IconButton(
                            onPressed: () async {
                              await canLaunch(kStackOverFlowLink)
                                  ? await launch(kStackOverFlowLink)
                                  : throw 'Could not launch StackOverFlowLink';
                            },
                            icon: const Icon(FontAwesomeIcons.stackOverflow),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ResponsiveRowColumnItem(
                rowFlex: 1,
                child: Image.asset(
                  'assets/images/ai.png',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
