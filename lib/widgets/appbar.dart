import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

Widget appBar(BuildContext context) {
  return AppBar(
    centerTitle: true,
    elevation: 0,
    backgroundColor: Colors.white,
    actions: [
      IconButton(
        icon: Icon(
          Icons.search,
          color: Colors.black,
          size: 30,
        ),
        onPressed: () {},
      )
    ],
    iconTheme:IconThemeData(color:Colors.black),
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          translator.translate('appBarTitle'),
          style: TextStyle(color: Colors.grey[600],fontSize: 13),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            translator.currentLanguage== 'ar' ?  Icon(
              Icons.keyboard_arrow_down,
              color: Theme.of(context).accentColor,
              size: 28,
            ):Container(),
            Text(
              translator.currentLanguage== 'en' ?   'El Gaish شارع شكري القوتلي':'شارع شكري القوتلي El Gaish',
              style: TextStyle(color:Theme.of(context).accentColor,fontSize: 16),
            ),

            translator.currentLanguage== 'en' ?  Icon(
              Icons.keyboard_arrow_down,
              color: Theme.of(context).accentColor,
              size: 28,
            ):Container()
          ],
        )
      ],
    ),
  );
}
