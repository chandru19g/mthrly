import 'package:flutter/material.dart';
import 'package:mothrly/ui/themes.dart';

class Card2 extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;

  const Card2({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(image),
            fit: BoxFit.contain,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title.toUpperCase(),
              style: Themes()
                  .cardDesc
                  .copyWith(color: const Color.fromRGBO(255, 93, 134, 1)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              subTitle,
              style: Themes()
                  .cardHeader
                  .copyWith(fontSize: 16.0, letterSpacing: 0.3),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Lorem ipsum dolor sit amet",
              style: Themes().cardDesc,
            ),
          ),
        ],
      ),
    );
  }
}
