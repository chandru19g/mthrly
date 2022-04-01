import 'package:flutter/material.dart';
import 'package:mothrly/ui/themes.dart';

class Header extends StatelessWidget {
  final String title, image;
  final bool leadingIcon;
  final double fSize;

  const Header({
    Key? key,
    required this.title,
    required this.image,
    required this.leadingIcon,
    required this.fSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  leadingIcon
                      ? const Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Icon(Icons.location_on_outlined),
                        )
                      : const Text(""),
                  Text(
                    title,
                    style: Themes().cardHeader.copyWith(fontSize: fSize),
                  ),
                ],
              ),
              InkWell(
                onTap: () {},
                child: Image(
                  image: AssetImage(image),
                ),
              ),
            ],
          ),
        ),
        const Divider(
          indent: 10.0,
          endIndent: 10.0,
          height: 40.0,
          color: Colors.grey,
          thickness: 0.3,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: Material(
            elevation: 15.0,
            shadowColor: Colors.white54,
            child: TextField(
              cursorColor: Color.fromRGBO(242, 107, 147, 1),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Color.fromRGBO(242, 107, 147, 1),
                ),
                hintText: 'Search Home',
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                border: InputBorder.none,
                fillColor: Colors.white,
                filled: true,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
