import 'package:flutter/material.dart';
import 'package:portfolio/widgets/custom_appbar.dart';

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Center(
        child: Image.network(
          'https://i.ibb.co/YPDH69W/cascade-3x.png',
        ),
      ),
    );
  }
}