import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Card(
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                flex: 40,
                child: Image.network(
                  'https://1.bp.blogspot.com/-pbg1o6Bb7FM/X3bI7pl04cI/AAAAAAAAF9c/aJOtHeIGzeU0kWFA7QI5uEOAgWhPxrz_QCLcBGAsYHQ/s16000/logo.png',
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(),
              ),
              Expanded(
                flex: 60,
                child: Container(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Wrap(
                    direction: Axis.horizontal,
                    children: <Widget>[
                      Text(
                        'Filmov',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      SizedBox(
                        height: height * .01,
                      ),
                      Text(
                        kLongText,
                        textScaleFactor: 1.2,
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
