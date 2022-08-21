import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget? largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;

  const ResponsiveWidget(
      {Key? key, this.largeScreen, this.mediumScreen, this.smallScreen})
      : super(key: key);

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 600;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 950;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 600 &&
        MediaQuery.of(context).size.width <= 950;
  }

  @override
  Widget build(BuildContext context) {
    final double constraints = MediaQuery.of(context).size.width;
    if (constraints > 950) {
      return largeScreen ?? mediumScreen ?? smallScreen!;
    }
    if (constraints > 600) {
      return mediumScreen ?? smallScreen ?? largeScreen!;
    }
    return smallScreen ?? mediumScreen ?? largeScreen!;
  }
}
