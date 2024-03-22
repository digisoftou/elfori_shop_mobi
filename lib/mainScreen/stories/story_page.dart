import 'dart:async';

import 'package:elfori_shop_mobi/colors.dart';
import 'package:elfori_shop_mobi/mainScreen/stories/story_bars.dart';
import 'package:flutter/material.dart';

import 'pages_for_stories/body_story.dart';
import 'pages_for_stories/brands_story.dart';
import 'pages_for_stories/face_story.dart';
import 'pages_for_stories/hair_story.dart';
import 'pages_for_stories/mans_story.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  int currentStoryIndex = 0;
  final List<Widget> myStories = [
    FaceStory(),
    HairStory(),
    BodyStory(),
    MansStory(),
    BrandsStory(),
  //  FaceStory(),
    // ElseStory(),
  ];

  List<double> percentWatched = [];

  @override
  void initState() {
    super.initState();
    for( int i = 0; i<myStories.length; i++){
      percentWatched.add(0);
    }

    _startWatching();
  }

  void _startWatching(){
    Timer.periodic(Duration(milliseconds: 30), (timer) {
      setState(() {
        if(percentWatched[currentStoryIndex]+0.01<1){
          percentWatched[currentStoryIndex] += 0.01;
        }
        else{
          percentWatched[currentStoryIndex] = 1;
          timer.cancel();

          if(currentStoryIndex<myStories.length){
            if(currentStoryIndex!=myStories.length-1){
              currentStoryIndex++;
              _startWatching();
            }
          }
          if(currentStoryIndex==myStories.length-1){
            Navigator.pop(context);
          }
        }
      });
    });
  }

  void _onTapDown( TapDownDetails details){
    final double screenWidth = MediaQuery.of(context).size.width;
    final double dx = details.globalPosition.dx;

    if(dx<screenWidth/2){
      setState(() {
        if(currentStoryIndex>0){
          percentWatched[currentStoryIndex-1]=0;
          percentWatched[currentStoryIndex]=0;
          currentStoryIndex--;//
        }
      });
    }else{
       setState(() {
         if(currentStoryIndex<myStories.length-1){
           percentWatched[currentStoryIndex]=1;
           currentStoryIndex++;
         }
         else{
           percentWatched[currentStoryIndex]=1;
         }
       });
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTapDown: (details) => _onTapDown(details) ,
      child: Scaffold(
        backgroundColor: AppColors.black,
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(

             children: [
               Container(
                 height: screenSize.height/7,
                 alignment: Alignment.bottomCenter,
                 child: StoryBars(
                   percentWatched: percentWatched,
                 ),
               ),
                SizedBox(height: 20,),
               ClipRRect(
                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(40),
                   topRight: Radius.circular(40),
                 ),
                 child: Container(
                   height: 6 * screenSize.height / 7,
                   child: myStories[currentStoryIndex],
                 ),
               ),

               //
             ]
            ),
        ),

      ),
    );
  }
}
