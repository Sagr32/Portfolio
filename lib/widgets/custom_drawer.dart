import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants/constants.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveVisibility(
      visible: true,
      visibleWhen: const [
        Condition.equals(name: MOBILE),
      ],
      child: Drawer(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              DrawerItem(
                label: kHomeLabel,
                icon: FontAwesomeIcons.home,
                onTap: () {
                  if (context.router.routeData.name != 'HomeScreen') {
                    context.router.pushNamed('/');
                  }
                },
              ),
              const Divider(),
              DrawerItem(
                label: kProjectsLabel,
                icon: FontAwesomeIcons.solidLightbulb,
                onTap: () {
                  if (context.router.current.name != 'ProjectsScreen') {
                    context.router.pushNamed('/projects-screen');
                  }
                },
              ),
              const Divider(),
              DrawerItem(
                label: kResumeLabel,
                icon: FontAwesomeIcons.clipboardCheck,
                onTap: () {
                  if (context.router.current.name != 'ResumeScreen') {
                    context.router.pushNamed('/resume-screen');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final Function onTap;
  final String label;
  final IconData icon;
  const DrawerItem({
    Key? key,
    required this.onTap,
    required this.label,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              label,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );

    //  TextButton.icon(

    //   style: ElevatedButton.styleFrom(
    //     padding: const EdgeInsets.all(4.0),
    //     textStyle: const TextStyle(
    //       fontSize: 22,
    //       fontWeight: FontWeight.bold,
    //     ),
    //   ),
    //   onPressed: () {
    //     onTap();
    //   },
    //   icon: Icon(
    //     icon,
    //     color: Colors.white,
    //   ),
    //   label: Text(label),
    // );
  }
}
