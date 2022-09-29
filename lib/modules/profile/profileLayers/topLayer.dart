import 'package:crypto_app/shared/constants/colors.dart';
import 'package:flutter/cupertino.dart';

class ProfilePageTopLayer{
  static profilePageTopLayer(){
    return Container(
      width: double.infinity,
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ConstColors.GREY,
            ),
          ),
        ],
      ),
    );
  }
}