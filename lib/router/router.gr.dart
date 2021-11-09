// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../screens/home_screen.dart' as _i1;
import '../screens/projects_screen.dart' as _i2;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeScreen.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeScreen());
    },
    ProjectsScreen.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.ProjectsScreen());
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(HomeScreen.name, path: '/'),
        _i4.RouteConfig(ProjectsScreen.name, path: '/projects-screen'),
      ];
}

/// generated route for [_i1.HomeScreen]
class HomeScreen extends _i4.PageRouteInfo<void> {
  const HomeScreen() : super(name, path: '/');

  static const String name = 'HomeScreen';
}

/// generated route for [_i2.ProjectsScreen]
class ProjectsScreen extends _i4.PageRouteInfo<void> {
  const ProjectsScreen() : super(name, path: '/projects-screen');

  static const String name = 'ProjectsScreen';
}
