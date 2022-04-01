import 'package:flutter/material.dart';
import 'package:mothrly/ui/themes.dart';

class DoubtCard extends StatelessWidget {
  const DoubtCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage("assets/profilepic.png"),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Asked by Mother",
                    style: Themes().cardDesc.copyWith(color: Colors.black),
                  ),
                  Text(
                    "28 years, Kolkata",
                    style: Themes().cardDesc.copyWith(fontSize: 10.0),
                  ),
                ],
              ),
              const SizedBox(
                width: 10.0,
              ),
              Text(
                "5m ago",
                style: Themes().cardDesc.copyWith(fontSize: 10.0),
              ),
            ],
          ),
          Center(
            child: Text(
              "Is hair loss normal after \n month of child's birth?",
              style: Themes()
                  .cardDesc
                  .copyWith(color: Colors.black, fontSize: 14.0),
            ),
          ),
          Text(
            "2 answers from doctors",
            style: Themes().cardDesc.copyWith(color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
