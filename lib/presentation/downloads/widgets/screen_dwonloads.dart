import 'package:flutter/material.dart';
import 'package:netflixapp/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  const ScreenDownloads({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
         child: AppBarWidget(title: 'Downloads',)),
      body: Text('Downloads'),
    );
  }
}