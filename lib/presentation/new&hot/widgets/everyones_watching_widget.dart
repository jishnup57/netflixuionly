
import 'package:flutter/material.dart';
import 'package:netflixapp/core/colors/colors.dart';
import 'package:netflixapp/core/constants.dart';
import 'package:netflixapp/presentation/Home/widget/custom_button_widget.dart';
import 'package:netflixapp/presentation/widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
          const Text(
                "Friends",
                style: TextStyle(
                  fontSize: 18,
                  color: colorWhite,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kHeight,
              const Text(
                "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour,",
                style: TextStyle(
                  fontSize: 16,
                  color: kGreyColor,
                  wordSpacing: 1,
                ),
              ),
              kHeight50,
             const VideoWidget(),
             kHeight,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:const [
                   CustomButtonWidget(
                    icon: Icons.share,
                    title: "Share",
                    iconSize: 25,
                    textSize: 16,
                  ),
                  kWidth, CustomButtonWidget(
                    icon: Icons.add,
                    title: "My List",
                    iconSize: 25,
                    textSize: 16,
                  ),kWidth,CustomButtonWidget(
                    icon: Icons.play_arrow,
                    title: "Play",
                    iconSize: 25,
                    textSize: 16,
                  ),
                  kWidth
                ],
              )
      ],
    );
  }
}