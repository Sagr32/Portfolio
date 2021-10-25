import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_drawer.dart';

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(appBarTitle: kResumeLabel),
      drawer: const CustomDrawer(),
      body: Center(
        child: Image.asset(
          'assets/images/cv.png',
        ),
      ),
    );
  }
}
