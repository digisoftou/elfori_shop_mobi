import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class StoriesProgressBar extends StatelessWidget {
  double percentWatched = 0;

  StoriesProgressBar({required this.percentWatched});

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      lineHeight: 8,
      percent:percentWatched,
      progressColor: Colors.grey[200],
      backgroundColor: Colors.grey[600],
      barRadius: Radius.circular(20),
    );
  }
}
