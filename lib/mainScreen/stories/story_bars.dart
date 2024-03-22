import 'package:elfori_shop_mobi/mainScreen/stories/progress_bar.dart';
import 'package:flutter/material.dart';

class StoryBars extends StatelessWidget {
  List<double> percentWatched = [];
  StoryBars({required this.percentWatched});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 60, left: 5, right: 5),
      child: Row(
        children: [
          Expanded(
              child: StoriesProgressBar(percentWatched: percentWatched[0])),
          Expanded(
              child: StoriesProgressBar(percentWatched: percentWatched[1])),
          Expanded(
              child: StoriesProgressBar(percentWatched: percentWatched[2])),
          Expanded(
              child: StoriesProgressBar(percentWatched: percentWatched[3])),
          Expanded(
              child: StoriesProgressBar(percentWatched: percentWatched[4])),
          // Expanded(
          //     child: StoriesProgressBar(percentWatched: percentWatched[5])),
        ],
      ),
    );
  }
}
