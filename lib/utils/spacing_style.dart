import 'package:barcodescanner/constants/size.dart';
import 'package:flutter/material.dart';

class TSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: TSizes.appBarHeight,
    left: TSizes.defaultSpacing,
    right: TSizes.defaultSpacing,
    bottom: TSizes.defaultSpacing,
  );
}
