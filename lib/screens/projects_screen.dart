// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/widgets/custom_appbar.dart';
import 'package:portfolio/widgets/custom_drawer.dart';
import 'package:portfolio/widgets/project_card.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        appBarTitle: kProjectsLabel,
      ),
      drawer: const CustomDrawer(),
      body: ListView(
        children: [
          ResponsiveRowColumn(
            rowMainAxisAlignment: MainAxisAlignment.center,
            layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            // ignore: prefer_const_literals_to_create_immutables
            children: <ResponsiveRowColumnItem>[
              ResponsiveRowColumnItem(
                rowFlex: 1,
                child: ProjectCard(
                  assetPath: 'affilih',
                  description: kAffilihDesc,
                  projectUrl: kAffilihUrl,
                  title: 'Affilih',
                ),
              ),
              ResponsiveRowColumnItem(
                rowFlex: 1,
                child: ProjectCard(
                  assetPath: 'heavendoors',
                  description: kHeavenDoorsDesc,
                  projectUrl: kHeavenDoorsUrl,
                  title: 'Heaven Doors',
                ),
              ),
              ResponsiveRowColumnItem(
                rowFlex: 1,
                child: ProjectCard(
                  assetPath: 'madewhere',
                  description: kMadeWhereDesc,
                  projectUrl: kMadeWhereUrl,
                  title: 'Made Where',
                ),
              ),
            ],
          ),
          ResponsiveRowColumn(
            rowMainAxisAlignment: MainAxisAlignment.center,
            layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            // ignore: prefer_const_literals_to_create_immutables
            children: <ResponsiveRowColumnItem>[
              ResponsiveRowColumnItem(
                rowFlex: 1,
                child: ProjectCard(
                  assetPath: 'recipe',
                  description: kRecipeDesc,
                  projectUrl: kRecipeUrl,
                  title: 'Recipe',
                ),
              ),
              ResponsiveRowColumnItem(
                rowFlex: 1,
                child: ProjectCard(
                  assetPath: 'filmov',
                  description: kFilmovDesc,
                  projectUrl: kFilmovUrl,
                  title: 'Filmov',
                ),
              ),
              ResponsiveRowColumnItem(
                rowFlex: 1,
                child: ProjectCard(
                  assetPath: 'ai',
                  description: kPortfolioDesc,
                  projectUrl: kPortfolioUrl,
                  title: 'Portfolio',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
