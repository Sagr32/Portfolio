import 'package:auto_route/auto_route.dart';
import '../screens/home_screen.dart';
import '../screens/projects_screen.dart';
import '../screens/resume_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomeScreen, initial: true),
    AutoRoute(
      page: ProjectsScreen,
    ),
    AutoRoute(
      page: ResumeScreen,
    ),
  ],
)
class $AppRouter {}
