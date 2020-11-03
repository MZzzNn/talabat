import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:task7_3lir/screens/home_screen.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await translator.init(
    localeDefault: LocalizationDefaultType.device,
    languagesList: <String>['ar', 'en'],
    assetsDirectory: 'assets/langs/',
  );

  runApp(
    LocalizedApp(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.white);

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        accentColor: Color(0xffF76C00),

        textTheme: ThemeData.light().textTheme.copyWith(
            body1:TextStyle(
              color: Color(0xff020804),
            ),
            body2:TextStyle(
              color: Color(0xff020804),
            ),
            title: TextStyle(
                fontSize: 22,fontWeight: FontWeight.w600
            )
        ),

      ),
      home: HomeScreen(),
      localizationsDelegates: translator.delegates,
      locale: translator.locale,
      supportedLocales: translator.locals(),
    );
  }
}
