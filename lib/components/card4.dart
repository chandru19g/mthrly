import 'package:flutter/material.dart';

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
            style: const TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(255, 93, 134, 1),
              letterSpacing: 0.8,
            ),
          ),
          Text(
            widget.subTitle,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            widget.desc,
            style: const TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
              letterSpacing: 0.8,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            child: Stack(
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
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 12.0, horizontal: 20.0),
                                child: Text(
                                  "View",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.8,
                                  ),
                                ),
                              ),
                            ),
                            style: TextButton.styleFrom(
                              backgroundColor:
                                  const Color.fromRGBO(242, 107, 147, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  bottom: 10,
                )
              ],
            ),
            constraints: const BoxConstraints.expand(
              width: 300,
              height: 200,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.image),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
        ],
      ),
    );
  }
}
