import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

Widget visibility_card({BuildContext context,Function function}){
  return Container(
    height: 85,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        color: Color(0xffE5E7FE),
        borderRadius: BorderRadius.circular(10)
    ),
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(translator.translate("visi card"),style: TextStyle(fontWeight: FontWeight.w500),),
              InkWell(
                  onTap:function,
                  child: Icon(Icons.clear,size: 18,color: Colors.black,))
            ],
          ),
          Text(translator.translate("learn more"),style: TextStyle(
              fontSize: 15,fontWeight: FontWeight.w500,color: Theme.of(context).accentColor))
        ],
      ),
    ),
  );
}