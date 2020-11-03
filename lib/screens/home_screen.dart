import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:task7_3lir/screens/drawer_screen.dart';
import 'package:task7_3lir/widgets/head_card.dart';
import 'package:task7_3lir/widgets/item_card.dart';
import 'package:task7_3lir/widgets/material_button.dart';
import 'package:task7_3lir/widgets/visibility_card.dart';
import '../widgets/appbar.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    bool visibilityCard=true;
    Widget textTitle({String title}){
      return Padding(
        padding:const EdgeInsets.symmetric(horizontal: 20),
        child: Text(translator.translate(title),style:Theme.of(context).textTheme.title ,),
      );
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        drawer:DrawerScreen(),
        appBar: appBar(context),
      body: ListView(
        children: [
          Padding(
            padding:const EdgeInsets.only(right: 20,left: 20,top: 15),
            child: Visibility(
                visible: visibilityCard,
                child: visibility_card(context: context,
                    function: (){
                      setState(() {
                        visibilityCard=false;
                      });
                    })
            ),
          ),
          Padding(
            padding:const EdgeInsets.symmetric(vertical: 25,horizontal: 20),
            child: Text(
              '${translator.translate("headTitle")}, Mazen',
              style: Theme.of(context).textTheme.title.copyWith(fontSize: 23),
            ),
          ),
          Padding(
            padding: translator.currentLanguage== 'en' ?
            const EdgeInsets.symmetric(horizontal: 20):const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
               head_card(
                    height: 160,
                   context: context,
                   color: Colors.deepOrange[400],
                   title: translator.translate("food"),
                   image: 'assets/images/dish3.png',
               ),
               head_card(
                 top: -10,
                 left: -10,
                 height: 135,
                 context: context,
                 color: Color(0xff00B68D),
                 title: translator.translate("groceries"),
                 image:translator.currentLanguage == 'en' ?'assets/images/groc.png':'assets/images/grocr.png',
               ),
              ],
            ),
          ),
          SizedBox(height: 30,),
          textTitle(title:"groceriesTitle"),
          SizedBox(height: 10,),
           Padding(
             padding:  translator.currentLanguage == 'en' ?
             const EdgeInsets.only(left: 20):const EdgeInsets.only(right: 25),
             child: Container(
               height: 215,
               width: MediaQuery.of(context).size.width-50,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10)
               ),
               child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                   itemCount:geoceryDate.length,
                   itemBuilder: (ctx,index)=>item_card(
                       context: context,
                        title: geoceryDate[index]['title'],
                        image: geoceryDate[index]['image'],
                        icon:  geoceryDate[index]['icon'] ,
                        rate:  geoceryDate[index]['iconTitle'] ,
                        shop:  geoceryDate[index]['rest'] ,
                   )),
             ),
           ),
          SizedBox(height: 60,),
          Padding(
            padding:const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(translator.translate("all day desert"),style:Theme.of(context).textTheme.title ,),
                Text('🍦🍩🍰',style:TextStyle(fontSize: 20)),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding:  translator.currentLanguage == 'en' ?
            const EdgeInsets.only(left: 20):const EdgeInsets.only(right: 20),
            child: Container(
              height: 215,
              width: MediaQuery.of(context).size.width-50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:desertDate.length,
                  itemBuilder: (ctx,index)=>item_card(
                    context: context,
                    title: desertDate[index]['title'],
                    image: desertDate[index]['image'],
                    icon:  desertDate[index]['icon'] ,
                    rate:  desertDate[index]['iconTitle'] ,
                    shop:  desertDate[index]['rest'] ,
                  )),
            ),
          ),
          SizedBox(height: 60,),
          textTitle(title:"freeDelivery"),
          SizedBox(height: 10,),
          Padding(
            padding:  translator.currentLanguage == 'en' ?
            const EdgeInsets.only(left: 20):const EdgeInsets.only(right: 20),
            child: Container(
              height: 215,
              width: MediaQuery.of(context).size.width-50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:freeDeliDate.length,
                  itemBuilder: (ctx,index)=>item_card(
                      context: context,
                      title: freeDeliDate[index]['title'],
                      image: freeDeliDate[index]['image'],
                      icon:  freeDeliDate[index]['icon'] ,
                      rate:  freeDeliDate[index]['iconTitle'] ,
                      shop:  freeDeliDate[index]['rest'] ,
                  )),
            ),
          ),
          SizedBox(height: 60,),
          Padding(
            padding:const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(translator.translate("nearest to u"),style:Theme.of(context).textTheme.title ,),
                Text('📍',style:TextStyle(fontSize: 20)),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding:  translator.currentLanguage == 'en' ?
            const EdgeInsets.only(left: 20):const EdgeInsets.only(right: 20),
            child: Container(
              height: 215,
              width: MediaQuery.of(context).size.width-50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:nearestDate.length,
                  itemBuilder: (ctx,index)=>item_card(
                    context: context,
                    title: nearestDate[index]['title'],
                    image: nearestDate[index]['image'],
                    icon:  nearestDate[index]['icon'] ,
                    rate:  nearestDate[index]['iconTitle'] ,
                    shop:  nearestDate[index]['rest'] ,
                  )),
            ),
          ),
          Padding(
            padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(image: AssetImage(translator.currentLanguage == 'en' ?
                    'assets/images/tagr.png':'assets/images/tag.png'),height: 20,),
                SizedBox(width: 7,),
                Text(translator.translate("special offer"),style: TextStyle(color: Colors.pink,fontSize: 15),)
              ],
            ),
          ),
          SizedBox(height: 60,),
          textTitle(title:"newly joined"),
          SizedBox(height: 10,),
          Padding(
            padding:  translator.currentLanguage == 'en' ?
            const EdgeInsets.only(left: 20):const EdgeInsets.only(right: 20),
            child: Container(
              height: 215,
              width: MediaQuery.of(context).size.width-50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:newlyDate.length,
                  itemBuilder: (ctx,index)=>item_card(
                    context: context,
                    title: newlyDate[index]['title'],
                    image: newlyDate[index]['image'],
                    icon:  newlyDate[index]['icon'] ,
                    rate:  newlyDate[index]['iconTitle'] ,
                    shop:  newlyDate[index]['rest'] ,
                  )),
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:15.0),
            child: Container(
              width: MediaQuery.of(context).size.width -(230),
                child: Button(context,"buttonTitle" , (){})),
          ),
          SizedBox(height: 20,),


        ],
      ),
    );
  }
}
