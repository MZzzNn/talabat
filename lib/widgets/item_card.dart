import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
Widget item_card({BuildContext context, String title, String image,String shop,String rate,IconData icon}){
  return  Padding(
    padding:  translator.currentLanguage == 'en' ?
    const EdgeInsets.only(right:15.0): const EdgeInsets.only(left:15.0),
    child: Container(
      height: 210,
      width: MediaQuery.of(context).size.width-70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 120,
            width: MediaQuery.of(context).size.width-35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image:NetworkImage(image))
            ),
          ),
          SizedBox(height: 6,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(translator.translate(title),style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18)),
              Row(
                children: [
                  Image(image: AssetImage('assets/images/moto.png'),height: 18,width: 18,),
                  SizedBox(width: 6,),
                  Text(translator.translate("time"),style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)
                ],
              ),
            ],
          ),
          //SizedBox(height: 5,),
          Text(translator.translate(shop),style: TextStyle(color: Colors.black45,fontSize: 17),),
          Row(
            children: [
              Icon(icon,size: 19,),
              SizedBox(width: 4,),
              Text(translator.translate(rate),style: TextStyle(color: Colors.black45,),),
              SizedBox(width: 2,),
              Text('・',style: TextStyle(color: Colors.black12,),),
              SizedBox(width: 2,),
               Text(translator.translate("deliveryFree"),style: TextStyle(color: Colors.black45,),),
            ],
          )
        ],
      ),
    ),
  );
}


List<Map<String,dynamic>> geoceryDate=[
  {
    'title': "Bob Marley",
    'image':'https://i.ytimg.com/vi/3kZn_SDtri0/maxresdefault.jpg',
    'icon' :FontAwesomeIcons.smile,
    'iconTitle':"good",
    'rest':"Grocery"
  },
  {
    'title': "2go",
    'image':'https://www.supermama.me/system/App/Entities/Recipe/images/000/103/917/watermarked/%D8%AC%D8%A8%D9%86-%D9%86%D8%A8%D8%A7%D8%AA%D9%8A.jpg',
    'icon' :FontAwesomeIcons.grinAlt,
    'iconTitle':"vgood",
    'rest':"Grocery"

  },
  {
    'title': "wst",
    'image':'https://img.atyabtabkha.com/lk4Y_Y81O89pAC_YHssgB2z3KFA=/0x0/smart/https://harmony-assets-live.s3.amazonaws.com/image_source/33/5a/335ab94b38d5bd726a1a73b8613e7b6e27a9d47c.jpg',
    'icon' :FontAwesomeIcons.smile,
    'iconTitle':"good",
    'rest':"Grocery"
  },
];
List<Map<String,dynamic>> freeDeliDate=[
  {
    'title': "pizza",
    'image':'https://fbcover.com/covers-images/download/slice_of_pizza.jpg',
    'icon' :FontAwesomeIcons.grinAlt,
    'iconTitle': "vgood",
    'rest': "rest"
  },
  {
    'title': "Apple id",
    'image':'https://www.ferra.ru/thumb/1800x0/filters:quality(75):no_upscale()/imgs/2020/02/18/08/3784034/21199a22b6d5eb0a7fdff0f22d13c8ba273b0c31.jpg',
    'icon' :FontAwesomeIcons.smile,
    'iconTitle':"good",
    'rest':"shop"
  },
  {
    'title': "dar el qamar",
    'image':'https://t24.tn/uploads/images/image_750x_5f5dfe83cb47e.jpg',
    'icon' :FontAwesomeIcons.smile,
    'iconTitle':"good",
    'rest':"shop"
  },
];
List<Map<String,dynamic>> newlyDate=[
  {
    'title': "al saeed",
    'image':'https://www.irishtimes.com/polopoly_fs/1.3670897.1540141865!/image/image.jpg_gen/derivatives/box_620_330/image.jpg',
    'icon' :FontAwesomeIcons.grinAlt,
    'iconTitle':"vgood",
    'rest':"shop"
  },
  {
    'title': "sultan",
    'image':'https://biz-file.com/c/1911/527030.jpg',
    'icon' :FontAwesomeIcons.smile,
    'iconTitle':"good",
    'rest':"phar"
  },
  {
    'title': "2go",
    'image':'https://www.supermama.me/system/App/Entities/Recipe/images/000/103/917/watermarked/%D8%AC%D8%A8%D9%86-%D9%86%D8%A8%D8%A7%D8%AA%D9%8A.jpg',
    'icon' :FontAwesomeIcons.grinAlt,
    'iconTitle':"vgood",
    'rest':"Grocery"

  },
  {
    'title': "dar el qamar",
    'image':'https://t24.tn/uploads/images/image_750x_5f5dfe83cb47e.jpg',
    'icon' :FontAwesomeIcons.grinAlt,
    'iconTitle':"vgood",
    'rest':"shop"
  },
];
List<Map<String,dynamic>> desertDate=[
  {
    'title': "donuts",
    'image':'https://wothot.com/wp-content/uploads/2018/06/instagram-In-Stream_Square___banana-protein-donuts-3.jpg',
    'icon' :FontAwesomeIcons.grinAlt,
    'iconTitle':"vgood",
    'rest':"deserts"
  },
  {
    'title': "nola",
    'image':'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F37%2F2019%2F05%2F03161902%2FRU311074.jpg',
    'icon' :FontAwesomeIcons.smile,
    'iconTitle':"good",
    'rest':"deserts"
  },
  {
    'title': "cake shop",
    'image':'https://www.treehugger.com/thmb/4c47nR-p9OeHN71DCKsCHsOV36Y=/768x0/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__mnn__images__2017__02__deep-dark-chocolate-tart-4ae98366066d47d8a888cf90affd11e6.jpg',
    'icon' :FontAwesomeIcons.grinAlt,
    'iconTitle':"vgood",
    'rest':"deserts"
  },
  {
    'title': "joy cake",
    'image':'https://realfood.tesco.com/media/images/RFO-1400x919-classic-chocolate-mousse-69ef9c9c-5bfb-4750-80e1-31aafbd80821-0-1400x919.jpg',
    'icon' :FontAwesomeIcons.grinAlt,
    'iconTitle':"vgood",
    'rest':"deserts"
  },
];
List<Map<String,dynamic>> nearestDate=[
  {
    'title': "doner konner",
    'image':'https://arwnews.com/wp-content/uploads/2019/05/%D8%B7%D8%B1%D9%8A%D9%82%D8%A9_%D8%B9%D9%85%D9%84_%D8%B3%D8%A7%D9%86%D8%AF%D9%88%D9%8A%D8%B4_%D8%A7%D9%84%D8%A8%D8%B1%D8%AC%D8%B1.jpg',
    'icon' :FontAwesomeIcons.grinAlt,
    'iconTitle':"vgood",
    'rest':"deserts"
  },

];