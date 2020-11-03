import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

Widget Button(BuildContext context,String title,Function function){
  return Material(
    borderRadius: BorderRadius.circular(15.0),
    color:Theme.of(context).accentColor,
    child: MaterialButton(
      onPressed: function,
      height: 55,
      minWidth: MediaQuery.of(context).size.width -(130),
      child: Text(translator.translate(title),style: TextStyle(color: Colors.white,fontSize: 16, ),),
    ),
  );
}