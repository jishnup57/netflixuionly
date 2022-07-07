import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflixapp/core/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 40,
              height: 150,
            ),
            Container(
              width: 130,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: kRadius10,
                image: DecorationImage(
                  image: NetworkImage(
                      'https://www.themoviedb.org/t/p/w220_and_h330_face/mbsRGqJtdKcVbjQxkrfzKCAkYoU.jpg'),
                fit: BoxFit.cover),
              ),
            ),
          ],
        ),
        Positioned(
        left: 13,
        bottom: 0,
          child: BorderedText(
            strokeWidth: 10.0,
            child: Text("${index+1}",style: TextStyle(
              fontSize: 120,
              decoration: TextDecoration.none,
              decorationColor: Colors.black
            ),),
          ),
        )
      ],
    );
  }
}
