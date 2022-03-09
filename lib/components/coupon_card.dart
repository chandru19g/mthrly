import 'package:flutter/material.dart';

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
                const Text(
                  "FLAT\n15% OFF",
                  style: TextStyle(
                    color: Color.fromRGBO(38, 78, 135, 1),
                    fontSize: 26.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "On your\nfirst Doctor\nconsultation".toUpperCase(),
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 10.0,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.8,
                  ),
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
              child: const Center(
                child: Text(
                  "FIRST : FIR15",
                  style: TextStyle(
                    fontSize: 12.0,
                    letterSpacing: 0.6,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
