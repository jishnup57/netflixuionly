import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflixapp/core/constants.dart';
import 'package:netflixapp/presentation/Home/widget/background_card.dart';
import 'package:netflixapp/presentation/Home/widget/number_title_card.dart';
import 'package:netflixapp/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(false);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (BuildContext, index, Widget? _) {
        return NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;
            print(direction);
            if (direction == ScrollDirection.reverse) {
              scrollNotifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              scrollNotifier.value = true;
            }
            return true;
          },
          child: Stack(
            children: [
              ListView(
                children: const [
                  BackgroundCard(),
                  kHeight,
                  MainTitleCard(
                    title: "Released in the past year",
                  ),
                  kHeight,
                  MainTitleCard(
                    title: "Trending Now",
                  ),
                  kHeight,
                  NumberTitleCard(),
                  kHeight,
                  MainTitleCard(
                    title: "Tense Dramas",
                  ),
                  kHeight,
                  MainTitleCard(
                    title: "South Indian Cinemas",
                  ),
                ],
              ),
              scrollNotifier.value == true
                  ? Container(
                      width: double.infinity,
                      height: 80,
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                'https://cdn-images-1.medium.com/max/1200/1*ty4NvNrGg4ReETxqU2N3Og.png',
                                width: 70,
                                height: 70,
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.cast,
                                size: 25,
                                color: Colors.white,
                              ),
                              kWidth,
                              Container(
                                width: 30,
                                height: 30,
                                color: Colors.blue,
                              ),
                              kWidth
                            ],
                          )
                        ],
                      ),
                    )
                  : kHeight
            ],
          ),
        );
      },
    ));
  }
}
