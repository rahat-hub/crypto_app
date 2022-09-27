import 'package:flutter/material.dart';

import '../../../shared/constants/colors.dart';

class HomePageTopLayer{
  static homePageTopLayer(){
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          height: 180,
          width: 450,
        ),
      ),
    );
  }
}