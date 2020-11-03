import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import '../screens/drawer_screen.dart';
import '../widgets/itemCard_setting.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  Widget flatCard({String title, String subTitle,Function function}){
    return  FlatButton(
        onPressed: function,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                SizedBox(height: 6,),
                Text(subTitle,
                  style: TextStyle(color: Theme.of(context).accentColor,fontWeight: FontWeight.w400),)
              ],
            ),
          ),
        )
    );
  }
  Widget _radioCard({String title,var value,var group}) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title),
            Radio(
              value: value,
              onChanged: (v){
                setState(() {
                  lang=v;
                });
                translator.setNewLanguage(context, newLanguage:
                translator.currentLanguage == 'ar' ? 'en' : 'ar',
                    restart: true);
              },
              groupValue: group,
            )
          ],
        ),
      ),
    );
  }
  _showMaterialDialog() {
    showDialog(
        context: context,
        builder: (_) => new AlertDialog(
          title: Center(child: new Text(translator.translate("change lang"),style: TextStyle(fontSize: 20),)),
          actions: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _radioCard(title:'العربية',value: translator.currentLanguage == 'en' ? 1:0,group: lang),
                Divider(),
                _radioCard(title:'English',value:translator.currentLanguage == 'en' ? 0:1,group: lang),
              ],
            )
          ],
        ));
  }
    bool notValue=true;
    var lang=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:DrawerScreen(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme:IconThemeData(color:Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          translator.translate('setting'),
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25,),
          itemCard(title: translator.translate('accountInfo')),
          itemCard(title: translator.translate('savedAddresses')),
          itemCard(title: translator.translate('changeEmail')),
          itemCard(title: translator.translate('changePassword')),
          SizedBox(height: 15,),
          Card(
            elevation: 2,
            child: Container(
              height: 50,
              child: Padding(
                padding: translator.currentLanguage == 'en' ?
                const EdgeInsets.only(left: 18,right: 4):const EdgeInsets.only(right: 18,left: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(translator.translate("notifications"),style:TextStyle(fontSize: 16, fontWeight: FontWeight.w500) ,),
                    Container(
                      width: 55,
                        child: Switch(value: notValue, onChanged: (v){setState(() {notValue=v;});}))
                  ],
                ),
              ),
            ),
          ),
         SizedBox(height: 5,),
          flatCard(title:translator.translate('lang') ,subTitle: translator.currentLanguage == 'ar' ? 'العربيه' : 'English',function: _showMaterialDialog,),
          SizedBox(height: 5,),
          Divider(height: 5,endIndent: 15,indent: 15,thickness: 1,),
          SizedBox(height: 5,),
          flatCard(title: translator.translate('country'),subTitle:translator.translate('egypt'),function: (){} ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 15),
            child: Text(translator.translate("logout"),
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
          )

        ],
      ),
    );
  }
}
