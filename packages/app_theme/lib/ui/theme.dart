import 'package:flutter/material.dart';

class AppBorder {
  static final dynamic AppBarBorder = RoundedRectangleBorder(
    borderRadius: BorderRadiusGeometry.only(
      bottomLeft: Radius.circular(10),
      bottomRight: Radius.circular(10),
    ),
  );

  static final BorderRadiusGeometry AppBoxBorder = BorderRadius.circular(20);

  static final dynamic ContactBorder = RoundedRectangleBorder(
    borderRadius: BorderRadiusGeometry.only(
      bottomLeft: Radius.circular(20),
      bottomRight: Radius.circular(20),
      topRight: Radius.circular(20),
      topLeft: Radius.circular(20),
    ),
  );
}
