import 'package:flutter/material.dart';
import 'package:mothrly/ui/themes.dart';

class Card1 extends StatelessWidget {
  final dynamic image;
  final dynamic title;
  final dynamic widget;

  const Card1({
    Key? key,
    required this.image,
    required this.title,
    this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: InkWell(
        onTap: () {
          widget != null
              ? Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) => widget),
                )
              : null;
        },
        child: Container(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    title,
                    style: Themes().cardHeader.copyWith(color: Colors.white70),
                  ),
                ),
                bottom: 50,
              ),
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 5.0),
                  child: Text(
                    "Consult an experienced gynaecologist and\nwash away your worries",
                    style: Themes().cardDesc,
                  ),
                ),
                bottom: 10,
              )
            ],
          ),
          constraints: const BoxConstraints.expand(
            width: 300,
            height: 350,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
      ),
    );
  }
}
