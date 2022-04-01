import 'package:flutter/material.dart';

class Themes {
  TextStyle get cardHeader {
    return const TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
      letterSpacing: 0.8,
    );
  }

  TextStyle get cardDesc {
    return const TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: Colors.grey,
      letterSpacing: 0.7,
    );
  }

  TextStyle get bottomSheetText {
    return const TextStyle(
      fontSize: 16.0,
      color: Colors.grey,
    );
  }
}
