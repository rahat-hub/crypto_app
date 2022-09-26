import 'package:crypto_app/shared/constants/colors.dart';
import 'package:crypto_app/widgets/texts.dart';
import 'package:flutter/material.dart';

abstract class Buttons{
  static buttons({text,onPressed,value = 0.0,circularValue = 0.0}){
    return Padding(
      padding: EdgeInsets.all(value),
      child: MaterialButton(
        minWidth: double.infinity,
        height: 60,
        onPressed: () => onPressed (),
        color: ConstColors.BLUE,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color:  ConstColors.BLUE,
          ),
          borderRadius: BorderRadius.circular(circularValue),
        ),
        child: Texts.texts(texts: text),
      ),
    );
  }
  static textButton({ texts, color, align, fontWeight, textSize, onPressed, l=0.0,t=0.0,r=0.0,b=0.0}) {
    return Padding(
      padding: EdgeInsets.fromLTRB(l,t,r,b),
      child: TextButton(
        style: ButtonStyle(alignment: align,),
        onPressed: () => onPressed(),
        child: Texts.texts(texts: texts,colors: color,fontWeight: fontWeight,textSize: textSize),
      ),
    );
  }
}