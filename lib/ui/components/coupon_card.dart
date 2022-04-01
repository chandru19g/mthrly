import 'package:flutter/material.dart';
import 'package:mothrly/ui/themes.dart';

class CouponCard extends StatelessWidget {
  const CouponCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "FLAT\n15% OFF",
                  style: Themes().cardHeader.copyWith(
                        color: const Color.fromRGBO(38, 78, 135, 1),
                        fontSize: 26.0,
                      ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "On your\nfirst Doctor\nconsultation".toUpperCase(),
                  style: Themes().cardDesc.copyWith(fontSize: 11.0),
                ),
              ],
            ),
          ),
          const Image(
            image: AssetImage(
              "assets/coupon.png",
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(75, 189, 253, 1),
                  Color.fromRGBO(38, 78, 135, 1),
                ],
              ),
            ),
            child: Transform(
              alignment: FractionalOffset.center,
              transform: Matrix4.identity()..rotateZ(270 * 3.1415927 / 180),
              child: Center(
                child: Text(
                  "FIRST : FIR15",
                  style: Themes().cardDesc.copyWith(color: Colors.white,),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
