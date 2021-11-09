import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants/constants.dart';
import 'menu_text_button.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String appBarTitle;
  const CustomAppBar({
    Key? key,
    required this.appBarTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: ResponsiveVisibility(
        visible: false,
        visibleWhen: const [
          Condition.smallerThan(name: TABLET),
        ],
        child: Text(appBarTitle),
      ),
      centerTitle: true,
      automaticallyImplyLeading: false,
      leading: ResponsiveVisibility(
        visible: false,
        visibleWhen: const [
          Condition.smallerThan(name: TABLET),
        ],
        child: IconButton(
          icon: const Icon(Icons.menu,
              color: Colors.white), // set your color here
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
      ),
      actions: [
        Row(
          children: [
            MenuTextButton(
              text: kHomeLabel,
              onTap: () {
                if (context.router.routeData.name != 'HomeScreen') {
                  context.router.replaceNamed('/');
                }
              },
            ),
            const SizedBox(
              width: 10,
            ),
            MenuTextButton(
              text: kProjectsLabel,
              onTap: () {
                if (context.router.current.name != 'ProjectsScreen') {
                  context.router.replaceNamed('/projects-screen');
                }
              },
            ),
            const SizedBox(
              width: 10,
            ),
            MenuTextButton(
              text: kResumeLabel,
              onTap: () async {
                await canLaunch(kResumeLink)
                    ? await launch(kResumeLink)
                    : throw 'Could not launch Link';
              },
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
