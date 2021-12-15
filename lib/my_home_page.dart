import 'package:flutter/material.dart';
import 'package:instagram/pages/favorite_page.dart';
import 'package:instagram/pages/home_page.dart';
import 'package:instagram/pages/plus_page.dart';
import 'package:instagram/pages/profile_page.dart';
import 'package:instagram/pages/search_page.dart';

class MyHomePages extends StatefulWidget{
  const MyHomePages({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => MyHomePagesState();
}

class MyHomePagesState extends State<MyHomePages>{
  String currentPageName = 'home';

  final Map<String, Widget> children = <String, Widget>{
    'home': new HomePage(),
    'search': new SearchPage(),
    'plus': new PlusPage(),
    'favorite': new FavoritePage(),
    'profile': new ProfilePage()
  };

  final appBar= AppBar(
    // backgroundColor:  const Color(0xfff8faf8),
    elevation: 1.0,
    centerTitle: true,
    leading:  const Icon(Icons.camera_alt),
    //   iconTheme: const IconThemeData(
    //     color: Colors.red
    // ),
    title:SizedBox(
        height: 35.0,
        child:  Image.asset("assets/images/insta_logo.png")
    ),
    actions: const <Widget>[
      Padding(padding:EdgeInsets.only(left: 12) ,child: Icon(Icons.send))
    ],


  );

changePage(String namePage){
  setState(() {
    currentPageName=namePage;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: children[currentPageName],
      bottomNavigationBar: Container(
          color: Colors.white,
          height: 50.0,
          alignment: Alignment.center,
          child:BottomAppBar(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(onPressed: (){changePage('home');}, icon: Icon(Icons.home,color:Colors.black)),
                  IconButton(onPressed: (){changePage('search');}, icon: Icon(Icons.search,color:Colors.black)),
                  IconButton(onPressed: (){changePage('plus');}, icon: Icon(Icons.add_box,color:Colors.black)),
                  IconButton(onPressed: (){changePage('favorite');}, icon: Icon(Icons.favorite,color:Colors.black)),
                  IconButton(onPressed: (){changePage('profile');}, icon: Icon(Icons.account_box,color:Colors.black))
                ],
              )
          )
      ),

    );
  }
}

// class MyHomePagesState extends State<MyHomePages>{
//   int currentPageIndex = 0;
//   final List children = [
//     new HomePage(),
//     new SearchPage(),
//     new PlusPage(),
//     new FavoritePage(),
//     new ProfilePage()
//   ];
//
//
//
//
//
//
//
//   final appBar= AppBar(
//     // backgroundColor:  const Color(0xfff8faf8),
//     elevation: 1.0,
//     centerTitle: true,
//     leading:  const Icon(Icons.camera_alt),
//     //   iconTheme: const IconThemeData(
//     //     color: Colors.red
//     // ),
//     title:SizedBox(
//         height: 35.0,
//         child:  Image.asset("assets/images/insta_logo.png")
//     ),
//     actions: const <Widget>[
//       Padding(padding:EdgeInsets.only(right: 12) ,child: Icon(Icons.send))
//     ],
//
//
//   );
//
// changePage(int indexPage){
//   setState(() {
//     currentPageIndex=indexPage;
//   });
// }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: appBar,
//       body: children[currentPageIndex],
//       bottomNavigationBar: BottomNavigationBar(items:const <BottomNavigationBarItem>[
//         BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black),label:'home',),
//         BottomNavigationBarItem(icon: Icon(Icons.search, color: Colors.black),label:'search'),
//         BottomNavigationBarItem(icon: Icon(Icons.add_box, color: Colors.black),label:'plus'),
//
//       ],
//         fixedColor: Colors.black,
//       onTap: changePage,
//         currentIndex: currentPageIndex,
//       ),
//
//
//
//     );
//   }
// }