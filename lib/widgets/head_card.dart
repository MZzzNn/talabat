import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

Widget head_card({BuildContext context,String title,Color color,String image,double top=-40,double left=-60,double height=170,}){
  return  Padding(
    padding:translator.currentLanguage == 'en' ?
    const EdgeInsets.only(right:15.0):const EdgeInsets.only(left:10.0),
    child: Container(
      height: 180,
      width: MediaQuery.of(context).size.width/2-35,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 15,
            right: translator.currentLanguage == 'en' ?0:10,
            left:  translator.currentLanguage == 'en' ? 10:0,
            child: Text(title,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),),
          ),

          Positioned(
            top:top,
            right: translator.currentLanguage == 'en' ?left:0,
            left:  translator.currentLanguage == 'en' ?0:left,
            child: ClipRRect(
                child: Image(image: AssetImage(image),height:height ,)),
          )
        ],
      ),
    ),
  );
}