import 'package:flutter/material.dart';
import 'package:mothrly/ui/themes.dart';

class Card3 extends StatelessWidget {
  final String image;

  const Card3({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(
        width: 250,
        height: 250,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          "Lorem Ipsum",
          style:
              Themes().cardHeader.copyWith(color: Colors.white, fontSize: 20.0),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
