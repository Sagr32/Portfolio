import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/widgets/menu_text_button.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      actions: [
        Row(
          children: [
            MenuTextButton(
              text: 'HOME',
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
              text: 'PROJECTS',
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
              text: 'RESUME',
              onTap: () {
                if (context.router.current.name != 'ResumeScreen') {
                  context.router.replaceNamed('/resume-screen');
                }
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
