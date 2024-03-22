import 'package:flutter/material.dart';

class StoryCircles extends StatelessWidget {

  final function;

  StoryCircles({this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 63,
          width: 63,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.withOpacity(0.3),
          ),
        ),
      ),
    );
  }
}
