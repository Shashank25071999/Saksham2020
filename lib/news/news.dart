import 'package:flutter/material.dart';
import 'package:saksham/news/display.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        // Expanded(flex: 1, child: new InstaStories()),
        Flexible(child: Display())
      ],
    );
  }
}
