import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class IntroductionPageTabletPortrait extends StatefulWidget {

  final SizingInformation? sizingInformation;

  const IntroductionPageTabletPortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  State<IntroductionPageTabletPortrait> createState() => _IntroductionPageTabletPortraitState();
}

class _IntroductionPageTabletPortraitState extends State<IntroductionPageTabletPortrait> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class IntroductionPageTabletLandscape extends StatefulWidget {

  final SizingInformation? sizingInformation;

  const IntroductionPageTabletLandscape({Key? key, this.sizingInformation}) : super(key: key);

  @override
  State<IntroductionPageTabletLandscape> createState() => _IntroductionPageTabletLandscapeState();
}

class _IntroductionPageTabletLandscapeState extends State<IntroductionPageTabletLandscape> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


