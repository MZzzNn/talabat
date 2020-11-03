import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:task7_3lir/screens/home_screen.dart';


Widget drawer_card({BuildContext context,int index,Function function}) {
  return FlatButton(
    onPressed:function,
    shape: BorderDirectional(
      start: BorderSide(
          color: Theme.of(context).accentColor,
          width: 8.5,
          style: drawerDate[index]['isSelected'] ?BorderStyle.solid:BorderStyle.none),
    ),
    child: Container(
      height: 65,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 10,
          ),
          Icon(drawerDate[index]['icon'],size: 26,),
          SizedBox(
            width: 30,
          ),
          Text(
            translator.translate(drawerDate[index]['title'] ),
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          Expanded(child: SizedBox(),),
          index==4? Text(translator.currentLanguage == 'en' ?'EGP O.OO':'ج.م O.OO',style: TextStyle(
              color: Theme.of(context).accentColor,fontWeight: FontWeight.w400,fontSize: 14),):Container(),
          SizedBox(width: 15,)
        ],
      ),
    ),
  );
}
int currentCat = 0;

List<Map<String, dynamic>> drawerDate = [
  {
    'title': "home",
    'icon': Icons.home,
    'page': HomeScreen(),
    'isSelected': true,
  },
  {
    'title': "order",
    'icon': FontAwesomeIcons.listAlt,
    'page': HomeScreen(),
    'isSelected': false,
  },
  {
    'title': "offers",
    'icon': Icons.local_offer,
    'page': HomeScreen(),
    'isSelected': false,
  },
  {
    'title': "notifications",
    'icon': Icons.notifications_none,
    'page': HomeScreen(),
    'isSelected': false,
  },
  {
    'title': "payment",
    'icon': Icons.payment,
    'page': HomeScreen(),
    'isSelected': false,
  },
  {
    'title': "help",
    'icon': Icons.help,
    'page': HomeScreen(),
    'isSelected': false,
  },
  {
    'title': "about",
    'icon': Icons.error_outline,
    'page': HomeScreen(),
    'isSelected': false,
  },
];
