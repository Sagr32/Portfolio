import 'package:flutter/material.dart';
import 'package:portfolio/widgets/custom_appbar.dart';

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Center(
        child: Image.asset(
          'cv.png',
        ),
      ),
    );
  }
}
