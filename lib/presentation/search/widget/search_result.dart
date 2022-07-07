import 'package:flutter/cupertino.dart';
import 'package:netflixapp/core/constants.dart';
import 'package:netflixapp/presentation/search/widget/title.dart';
const imgurl= 'https://www.themoviedb.org/t/p/w220_and_h330_face/qJRB789ceLryrLvOKrZqLKr2CGf.jpg';
class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       const SearchTextTitle(title: "Movies & TV"),
        kHeight,
        Expanded(
          child: GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            childAspectRatio: 1/1.4,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            children: List.generate(20, (index) {
              return const MainCard();
            }),
          ),
        )
      ],
    );
  }
}
 class MainCard extends StatelessWidget {
   const MainCard({ Key? key }) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return Container(
       decoration:  BoxDecoration(
        borderRadius: 
          BorderRadius.circular(7),
        
        image:const DecorationImage(image:NetworkImage(imgurl,
        ) ,
        fit: BoxFit.cover)
       ),
     );
   }
 }