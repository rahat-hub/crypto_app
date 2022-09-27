import 'package:crypto_app/shared/constants/colors.dart';
import 'package:flutter/material.dart';

class HomePageBottomLayer{
  static homePageBottomLayer(){
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: ConstColors.BACKGROUND,
      currentIndex: 0,
      selectedIconTheme: IconThemeData(size: 25,color: Colors.white,shadows: [
        Shadow(
          blurRadius: 50,
          color: Colors.blueAccent,
        ),
      ]),
      selectedItemColor: ConstColors.TEXTWHITE,
      unselectedItemColor: ConstColors.GREY,
      items: const [
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.grid_view),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.auto_graph_rounded),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.credit_card),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.person_sharp),
        ),
      ],
      iconSize: 25,
    );
  }
}