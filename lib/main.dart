import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
   const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title:'اینستاگرام',

     debugShowCheckedModeBanner: false,
     theme:  ThemeData(
         // floatingActionButtonTheme: const FloatingActionButtonThemeData(
         //     foregroundColor: Colors.red,
         //     backgroundColor: Colors.redAccent),
         fontFamily: 'Vazir',

         appBarTheme: const AppBarTheme(
             titleTextStyle: TextStyle(
                 fontSize: 22,
                 fontWeight: FontWeight.bold,
                 color: Colors.blue),

             backgroundColor: Color(0xfff8faf8),
             foregroundColor: Colors.black),

     ),
     home: new Directionality(textDirection:TextDirection.rtl, child: MyHomePages())
   );
  }
}

