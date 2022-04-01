import 'package:flutter/material.dart';
import 'package:mothrly/ui/components/myButton.dart';

//importing screens
import 'package:mothrly/ui/screens/current_location.dart';

//AIzaSyAyBMJ6y_Bv5Dnmoy__GzYaXvN_L80UciY

class FindDoulasScreen extends StatefulWidget {
  const FindDoulasScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<FindDoulasScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 107, 147, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Plants.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Stack(
              children: const [
                Center(
                  child: Image(
                    image: AssetImage('assets/Group_76.png'),
                  ),
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  "Hello, nice to meet you",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                    fontFamily: 'General Sans',
                    letterSpacing: 1.0,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 40.0, top: 5.0),
                child: Text(
                  "Find Doulas Around",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'General Sans',
                    color: Colors.white,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: MyButton(
                  label: "Use current location",
                  icon: Icons.location_on,
                  onTapButton: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const CurrentLocationScreen(),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                child: MyButton(
                  icon: Icons.search,
                  label: "Search your location",
                  onTapButton: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
