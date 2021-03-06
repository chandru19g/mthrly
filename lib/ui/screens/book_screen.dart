import 'package:flutter/material.dart';
import 'package:mothrly/ui/components/header.dart';
import 'package:mothrly/model/doulas.dart';
import 'package:mothrly/ui/themes.dart';

class BookScreen extends StatefulWidget {
  const BookScreen({Key? key}) : super(key: key);

  @override
  _BookScreenState createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  final doulas = Doulas.sampleData;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(
          245,
          245,
          245,
          1,
        ),
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 40.0,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overScroll) {
          overScroll.disallowIndicator();
          return false;
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                        child: Header(
                          title:
                              "21, Satyam Indl\nEstate, Govandi\nStn Rd, Tele...",
                          image: "assets/Group_1.png",
                          leadingIcon: true,
                          fSize: 14.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          "Doulas Available in your area",
                          style: Themes()
                              .cardHeader
                              .copyWith(fontSize: 18.0, letterSpacing: 0.2),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 5.0),
                        child: Text(
                          "45 Doulas",
                          style: Themes().cardDesc,
                        ),
                      ),
                      Container(
                        constraints: BoxConstraints.expand(
                          width: width,
                          height: 370,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          ),
                          itemBuilder: (context, index) {
                            final simpleDoulas = doulas[index];
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white,
                              ),
                              padding: const EdgeInsets.all(8.0),
                              margin: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image(
                                    image: AssetImage(simpleDoulas.imageUrl),
                                    height: 80.0,
                                    width: 100.0,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 1.0, horizontal: 8.0),
                                    color: Colors.green,
                                    child: Text(
                                      "${simpleDoulas.ratings} ???",
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    simpleDoulas.name,
                                    style: Themes()
                                        .cardHeader
                                        .copyWith(fontSize: 16.0),
                                  ),
                                  Text(
                                    simpleDoulas.exp,
                                    style: Themes()
                                        .cardDesc
                                        .copyWith(fontSize: 10.0),
                                  ),
                                ],
                              ),
                            );
                          },
                          itemCount: doulas.length,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 60.0,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _containerButton(Icons.filter_alt_sharp, "Filter", () {}),
                  const VerticalDivider(
                    width: 20.0,
                    color: Colors.grey,
                    endIndent: 8.0,
                    indent: 8.0,
                    thickness: 0.5,
                  ),
                  _containerButton(Icons.sort, "Sort", _showBottomSheet),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _containerButton(IconData icon, String label, Function() onTapped) {
    return Expanded(
      child: InkWell(
        onTap: onTapped,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.grey,
              size: 20.0,
            ),
            Text(
              label,
              style: Themes().cardDesc.copyWith(fontSize: 16.0),
            ),
          ],
        ),
        // icon:
        // label:
        // style: ElevatedButton.styleFrom(
        //   primary: Colors.white,
        //   elevation: 0.0,
        // ),
      ),
    );
  }

  _showBottomSheet() {
    return showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.0),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Sort by',
                style: Themes().bottomSheetText,
              ),
              const Divider(
                color: Colors.grey,
                height: 30.0,
              ),
              Text(
                'Discount',
                style: Themes().bottomSheetText,
              ),
              const Divider(
                color: Colors.grey,
                thickness: 0.2,
                height: 30.0,
              ),
              Text(
                'Price - high to low',
                style: Themes().bottomSheetText,
              ),
              const Divider(
                color: Colors.grey,
                thickness: 0.2,
                height: 30.0,
              ),
              Text(
                'Customer Ratings',
                style: Themes().bottomSheetText,
              ),
              const Divider(
                color: Colors.grey,
                thickness: 0.2,
                height: 30.0,
              ),
              Text(
                'Price - low to high',
                style: Themes().bottomSheetText,
              ),
            ],
          ),
        );
      },
    );
  }
}
