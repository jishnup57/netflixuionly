import 'package:flutter/material.dart';
import 'package:netflixapp/core/constants.dart';
import 'package:netflixapp/presentation/Home/widget/number_title_card.dart';
import 'package:netflixapp/presentation/widgets/main_title_card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:const [
             MainTitleCard(
              title: "Released in the past year",
            ),
             MainTitleCard(
              title: "Trending Now",
            ),
            kHeight,
            NumberTitleCard(),
             MainTitleCard(
              title: "Tense Dramas",
            ),
             MainTitleCard(
              title: "South Indian Cinemas",
            ),
          ],
        ),
      ),
    );
  }
}

