import 'package:flutter/material.dart';
import '../../../widgets/views.dart';

class HomePageBottomLayer{
  static homePageBottomLayer(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Views.homePageBottomLayer2(
            icon: Icons.grid_view,
            onPressed: (){
              print("Hello Bro");
            }),
        Views.homePageBottomLayer2(
            icon: Icons.auto_graph_outlined,
            onPressed: (){
              print("Hello Rahat");
            }),
        Views.homePageBottomLayer2(
            icon: Icons.credit_card,
            onPressed: (){
              print("Hello SR");
            }),
        Views.homePageBottomLayer2(
            icon: Icons.person,
            onPressed: (){
              print("Hello BP");
            }),
      ],
    );
  }
}