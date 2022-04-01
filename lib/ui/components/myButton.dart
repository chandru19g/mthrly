import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTapButton;
  final String label;
  final IconData? icon;
  final Color? color;
  final double? vertical;
  final double? horizontal;

  const MyButton({
    Key? key,
    required this.label,
    required this.onTapButton,
    this.icon,
    this.color,
    this.horizontal,
    this.vertical,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTapButton,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.,
            children: [
              icon != null
                  ? Icon(
                      icon,
                      color: Colors.grey,
                    )
                  : Container(),
              icon != null
                  ? const SizedBox(
                      width: 10.0,
                    )
                  : Container(),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: vertical != null ? vertical!.toDouble() : 6.0,
                  horizontal: horizontal != null ? horizontal!.toDouble() : 0.0,
                ),
                child: Text(
                  label,
                  style: TextStyle(
                      color: color == null ? Colors.black : Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.6),
                ),
              )
            ],
          ),
        ),
      ),
      style: TextButton.styleFrom(
          backgroundColor: color ?? Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60.0),
          )),
    );
  }
}
