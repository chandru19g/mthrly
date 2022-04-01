import 'package:flutter/material.dart';
import 'package:mothrly/ui/components/card1.dart';
import 'package:mothrly/ui/components/card2.dart';
import 'package:mothrly/ui/components/card3.dart';
import 'package:mothrly/ui/components/card4.dart';
import 'package:mothrly/ui/components/coupon_card.dart';
import 'package:mothrly/ui/components/doubtcard.dart';
import 'package:mothrly/ui/components/header.dart';
import 'package:mothrly/ui/components/myButton.dart';
import 'package:mothrly/ui/screens/book_screen.dart';
import 'package:mothrly/ui/themes.dart';

class ParentHome extends StatefulWidget {
  const ParentHome({Key? key}) : super(key: key);

  @override
  _ParentHomeState createState() => _ParentHomeState();
}

class _ParentHomeState extends State<ParentHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white70,
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overScroll) {
          overScroll.disallowIndicator();
          return false;
        },
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 50.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Header(
                    title: "Good Morning,\nSarah",
                    image: "assets/Group_1.png",
                    leadingIcon: false,
                    fSize: 25.0,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    width: 400,
                    height: 350.0,
                    color: Colors.transparent,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        Card1(
                          image: "assets/card1p1.png",
                          title: "Consult a\nGynaecologist",
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Card1(
                          image: "assets/card1p2.png",
                          title: "Book a\nDoula Service",
                          widget: BookScreen(),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      "In the Spotlight",
                      style: Themes().cardHeader.copyWith(fontSize: 20.0),
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      "Explore deals, offers and recent features ",
                      style: Themes().cardDesc.copyWith(fontSize: 13.0),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    width: 400,
                    height: 140.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        CouponCard(),
                        SizedBox(
                          width: 15.0,
                        ),
                        CouponCard(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      "Explore Features",
                      style: Themes().cardHeader.copyWith(fontSize: 20.0),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    width: 400,
                    height: 270.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        Card2(
                          image: "assets/card2p1.png",
                          title: "Card Templates",
                          subTitle: "Create your own baby invites.",
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Card2(
                          image: "assets/card2p2.png",
                          title: "face calculator",
                          subTitle: "Future baby prediction",
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      "Doula Skill Set",
                      style: Themes().cardHeader.copyWith(fontSize: 20.0),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    width: 400,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        Card3(image: "assets/card3p1.png"),
                        SizedBox(
                          width: 15.0,
                        ),
                        Card3(image: "assets/card3p2.png"),
                        SizedBox(
                          width: 15.0,
                        ),
                        Card3(image: "assets/card3p3.png"),
                        SizedBox(
                          width: 15.0,
                        ),
                        Card3(image: "assets/card3p4.png"),
                        SizedBox(
                          width: 15.0,
                        ),
                        Card3(image: "assets/card3p5.png"),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    width: 400.0,
                    color: const Color.fromRGBO(255, 228, 237, 0.47),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 50.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Join Our Community!",
                            style: Themes()
                                .cardHeader
                                .copyWith(fontSize: 26.0, letterSpacing: 0.0),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 60),
                            child: Text(
                              "Share your doubts and find solutions from India's top doctors.",
                              style: Themes().cardDesc.copyWith(fontSize: 14.0),
                              softWrap: true,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 20.0),
                            child: MyButton(
                              label: "Join now",
                              onTapButton: () {},
                              color: const Color.fromRGBO(242, 107, 147, 1),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            width: 400,
                            height: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: const [
                                Card4(
                                  title: "",
                                  subTitle: "",
                                  desc: "",
                                  image: "",
                                ),
                                Card4(
                                  title: "LIFESTYLE",
                                  image: "assets/card4p3.png",
                                  subTitle: "Dietary Regulations",
                                  desc:
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing ",
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Card4(
                                  title: "BLOG",
                                  image: "assets/card4p1.png",
                                  subTitle: "First Doula Experience",
                                  desc:
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing ",
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Card4(
                                  title: "EXERCISE",
                                  image: "assets/card4p2.png",
                                  subTitle: "Yoga poses to relieve stress",
                                  desc:
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing",
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            color: Colors.grey,
                            indent: 15.0,
                            endIndent: 15.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Share Doubts",
                                      style: Themes()
                                          .cardHeader
                                          .copyWith(fontSize: 18.0),
                                    ),
                                    Text(
                                      "Find solutions from India's top doctors.",
                                      style: Themes().cardDesc,
                                    ),
                                  ],
                                ),
                                Text(
                                  "View All",
                                  style: Themes().cardDesc.copyWith(
                                        color: const Color.fromRGBO(
                                            255, 93, 134, 1),
                                      ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            width: 800,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: const [
                                DoubtCard(),
                                SizedBox(
                                  width: 15.0,
                                ),
                                DoubtCard(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 90.0),
              child: Center(
                child: Image(
                  image: AssetImage("assets/logo.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
