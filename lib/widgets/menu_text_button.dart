import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MenuTextButton extends StatelessWidget {
  final Function onTap;
  final String text;
  const MenuTextButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveVisibility(
      visible: false,
      visibleWhen: const [
        Condition.largerThan(name: MOBILE),
      ],
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.white,
          textStyle: const TextStyle(fontWeight: FontWeight.w600),
        ),
        onPressed: () {
          onTap();
        },
        child: Text(
          text,
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
