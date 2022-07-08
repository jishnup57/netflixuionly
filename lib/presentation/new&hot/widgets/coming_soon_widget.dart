
import 'package:flutter/material.dart';
import 'package:netflixapp/core/colors/colors.dart';
import 'package:netflixapp/core/constants.dart';
import 'package:netflixapp/presentation/Home/widget/custom_button_widget.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({
    Key? key,
  
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text("FEB",
                  style: TextStyle(fontSize: 16, color: kGreyColor)),
              Text(
                "11",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: Image.asset(
                      "asset/image/newandhotTempImage.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: CircleAvatar(
                      backgroundColor: Colors.black.withOpacity(0.5),
                      radius: 22,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.volume_off,
                          color: colorWhite,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "MS.Marvel",
                    style: TextStyle(
                        fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  CustomButtonWidget(
                    icon: Icons.notification_add,
                    title: "Remind me",
                    iconSize: 20,
                    textSize: 16,
                  ),
                  kWidth,
                  CustomButtonWidget(
                    icon: Icons.info_outline,
                    title: "Info",
                    iconSize: 20,
                    textSize: 16,
                  ),
                  kWidth
                ],
              ),
              const Text("Coming on Friday"),
              kHeight,
              const Text(
                "MS.Marvel",
                style: TextStyle(
                  fontSize: 18,
                  color: kGreyColor,
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
                  ))
            ],
          ),
        )
      ],
    );
  }
}
