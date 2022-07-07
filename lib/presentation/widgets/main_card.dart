import 'package:flutter/material.dart';
import 'package:netflixapp/core/constants.dart';
import 'package:netflixapp/presentation/search/widget/search_result.dart';

class MainCardHome extends StatelessWidget {
  const MainCardHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 150,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: kRadius10,
        image: DecorationImage(
          image: NetworkImage(
              'https://www.themoviedb.org/t/p/w220_and_h330_face/74kkM7E5IymHl7ZS4XugP6YT3zU.jpg'),
              fit: BoxFit.cover
        ),
      ),
    );
  }
}
