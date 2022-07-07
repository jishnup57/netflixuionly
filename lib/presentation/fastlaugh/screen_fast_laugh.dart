import 'package:flutter/material.dart';
import 'package:netflixapp/presentation/fastlaugh/widget/videolist_items.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: 
      PageView(
        scrollDirection: Axis.vertical,
        children: 
          List.generate(20, (index) => VideoListItems(index: index,))
        ,
      )),
    );
  }
}