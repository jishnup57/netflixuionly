import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixapp/core/colors/colors.dart';
import 'package:netflixapp/core/constants.dart';
import 'package:netflixapp/presentation/search/widget/title.dart';

const String imageurl =
    'https://www.themoviedb.org/t/p/w250_and_h141_face/m0ObOaJBerZ3Unc74l471ar8Iiy.jpg';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kHeight,
            const SearchTextTitle(title: "Top Search"),
            kHeight,
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (ctx, index) =>const TopSearchItemsTile(),
                separatorBuilder: (ctx, index) => kHeight20,
                itemCount: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TopSearchItemsTile extends StatelessWidget {
  const TopSearchItemsTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenwidth * 0.35,
          height: 65,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageurl),
            ),
          ),
        ),
        kWidth,
        const Expanded(
          child: Text(
            "Movie Name",
            style: TextStyle(
                color: colorWhite, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        const CircleAvatar(
          backgroundColor: colorWhite,
          radius: 27,
          child: CircleAvatar(
            backgroundColor: kBlackColor,
            radius: 25,
            child: Icon(
              CupertinoIcons.play_fill,
              color: colorWhite,
            ),
          ),
        )
      ],
    );
  }
}
