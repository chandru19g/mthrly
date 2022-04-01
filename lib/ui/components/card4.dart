import 'package:flutter/material.dart';
import 'package:mothrly/ui/components/myButton.dart';
import 'package:mothrly/ui/themes.dart';

class Card4 extends StatefulWidget {
  final String title, subTitle, desc, image;

  const Card4(
      {Key? key,
      required this.title,
      required this.image,
      required this.subTitle,
      required this.desc})
      : super(key: key);

  @override
  State<Card4> createState() => _Card4State();
}

class _Card4State extends State<Card4> {
  bool _isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: Themes().cardDesc.copyWith(
                  color: const Color.fromRGBO(255, 93, 134, 1),
                ),
          ),
          Text(
            widget.subTitle,
            style: Themes().cardHeader.copyWith(fontSize: 20.0),
          ),
          Text(
            widget.desc,
            style: Themes().cardDesc,
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            child: widget.title != ""
                ? Stack(
                    children: [
                      Positioned(
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              _isFavorited = !_isFavorited;
                            });
                          },
                          icon: Icon(_isFavorited
                              ? Icons.bookmark
                              : Icons.bookmark_border_outlined),
                          color: Colors.white,
                        ),
                        right: 10,
                      ),
                      Positioned(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.thumb_up_alt_outlined,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    " 2.1 k",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4.0,
                                  ),
                                  Icon(
                                    Icons.timelapse_outlined,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    " 1 hr ago",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30.0),
                                child: MyButton(
                                  label: "View",
                                  onTapButton: () {},
                                  vertical: 4.0,
                                  horizontal: 20.0,
                                  color: const Color.fromRGBO(242, 107, 147, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        bottom: 10,
                      )
                    ],
                  )
                : Container(),
            constraints: BoxConstraints.expand(
              width: widget.title != "" ? 300 : 250,
              height: 200,
            ),
            decoration: widget.image != ""
                ? BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.image),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  )
                : null,
          ),
        ],
      ),
    );
  }
}
