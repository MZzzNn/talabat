import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:task7_3lir/screens/setting_screen.dart';
import 'package:task7_3lir/widgets/drawer_card.dart';


class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 5,top: 35,left: 15),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen()));
              },
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: Colors.brown[900]),
                    child: Center(child: Text('M',style:TextStyle(fontSize: 18,color: Colors.white) ,)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mazen Mohamed',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                          height:6
                      ),
                      Row(
                        children: [
                          Image(image: AssetImage('assets/images/egypt.png'),height: 15,),
                          SizedBox(
                            width: 5,
                          ),
                          Text(translator.translate("egypt"),
                            style: TextStyle(
                              color: Colors.black38,fontSize: 15,),),
                        ],
                      )
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  Icon(Icons.settings, color: Colors.grey[500],),
                  SizedBox(
                    width: 8,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: drawerDate.length,
                  itemBuilder:(context,index){
                    return drawer_card(
                        context: context,
                        index: index,
                      function: (){
                        setState(() {
                          drawerDate[currentCat]['isSelected'] = false;
                          currentCat = index;
                          drawerDate[currentCat]['isSelected'] = true;
                        });
                        Navigator.of(context).push(MaterialPageRoute(builder: (_)=>drawerDate[currentCat]['page']));
                      },
                    );
                  })
          )
        ],
      ),
    );
  }
}
