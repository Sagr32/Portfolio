import 'package:flutter/material.dart';
import 'package:portfolio/widgets/custom_appbar.dart';
import 'package:portfolio/widgets/project_card.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: ListView(
        children: [
          ResponsiveRowColumn(
            rowMainAxisAlignment: MainAxisAlignment.center,
            // rowPadding: const EdgeInsets.all(30),
            // columnPadding: const EdgeInsets.all(30),
            layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            children: [
              ResponsiveRowColumnItem(
                rowFlex: 1,
                child: ProjectCard(),
              ),
              ResponsiveRowColumnItem(
                rowFlex: 1,
                child: ProjectCard(),
              ),
              ResponsiveRowColumnItem(
                rowFlex: 1,
                child: ProjectCard(),
              ),
            ],
          ),
          ResponsiveRowColumn(
            rowMainAxisAlignment: MainAxisAlignment.center,
            // rowPadding: const EdgeInsets.all(30),
            // columnPadding: const EdgeInsets.all(30),
            layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            children: [
              ResponsiveRowColumnItem(
                rowFlex: 1,
                child: ProjectCard(),
              ),
              ResponsiveRowColumnItem(
                rowFlex: 1,
                child: ProjectCard(),
              ),
              ResponsiveRowColumnItem(
                rowFlex: 1,
                child: ProjectCard(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
