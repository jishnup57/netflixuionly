import 'package:flutter/material.dart';
import 'package:netflixapp/core/colors/colors.dart';

class VideoListItems extends StatelessWidget {
 final int index;
const  VideoListItems({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.5),
                  radius: 30,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.volume_off,
                    color: colorWhite,
                    size: 30,),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding:  EdgeInsets.symmetric(vertical:10.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage( 'https://www.themoviedb.org/t/p/w220_and_h330_face/rJHC1RUORuUhtfNb4Npclx0xnOf.jpg'),
                      ),
                    ),
                    VideoActionWidget(icon: Icons.emoji_emotions, title: "LoL"),
                    VideoActionWidget(icon: Icons.add, title: "My List"),
                    VideoActionWidget(icon: Icons.share, title: "share"),
                    VideoActionWidget(icon: Icons.play_arrow, title: "play")
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionWidget({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:10.0,horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: colorWhite,
            size: 30,
          ),
          Text(title,style:const TextStyle(
            fontSize: 16
          ),)
        ],
      ),
    );
  }
}
