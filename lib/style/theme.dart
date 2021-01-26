import 'dart:ui';

import 'package:flutter/cupertino.dart';

class ColorsProject {

  const ColorsProject();

  static const Color loginGradientStart = const Color.fromRGBO(228, 225, 253, 1.0);
  static const Color loginGradientEnd = const  Color.fromRGBO(118, 48, 220, 1.0);

  static const primaryGradient = const LinearGradient(
    colors: const [loginGradientStart, loginGradientEnd],
    stops: const [0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}