import 'package:flutter/material.dart';

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
                    style: const TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white70,
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
                bottom: 50,
              ),
              const Positioned(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
                  child: Text(
                    "Consult an experienced gynaecologist and\nwash away your worries",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      letterSpacing: 0.7,
                    ),
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
