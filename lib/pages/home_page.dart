

import 'package:flutter/material.dart';
import 'package:instagram/list_stories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget{
  HomePage({Key? key}) : super(key: key);

final instaPost = new Column(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: <Widget>[
    new Padding(
      padding:const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0) ,
    child:new Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        new Row(
          children:<Widget>[
            new Container(
           margin: EdgeInsets.only(left: 8.0),
      height: 40.0,
      width: 40,
      decoration: new BoxDecoration(
      shape: BoxShape.circle,
          image: new DecorationImage(
              image: new NetworkImage("https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_960_720.jpg")

  )
      ),
      ),
            new Text(
              "حسام موسوی",
              style: TextStyle(fontWeight: FontWeight.w500),
            )
      ],
        ),
        new IconButton(onPressed: null,icon: new Icon(Icons.more_vert))
      ],
    ) ,
    ),
    new Row(
      children: [
        new Expanded(
            child: Image.network(
                "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_960_720.jpg",
                fit: BoxFit.cover,
            )
        )
      ],
    ),
    new Padding(
        padding: const EdgeInsets.all(16.0),
        child: new Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        new Row(
          children:<Widget>[
            new GestureDetector(
              onTap:() {print('pressed');},
              child: new Icon(FontAwesomeIcons.heart, color:Colors.black)
    ),
            new GestureDetector(
                onTap:() {print('pressed');},
                child:new Padding(
                    padding: const EdgeInsets.only(right:12),
                    child: new Icon(FontAwesomeIcons.comment, color:Colors.black)
            ),
            ),
            new GestureDetector(
                onTap:() {print('pressed');},
                child: new Padding(
                    padding: const EdgeInsets.only(right:12),
                   child: new Icon(FontAwesomeIcons.paperPlane, color:Colors.black)
                ),

            ),
            
          ],
        ),
        new IconButton(onPressed: null, icon: new Icon(FontAwesomeIcons.bookmark,color: Colors.black))

      ],
        ),
    ),
    new Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: new Text('محمد وعلی و 50000 نفر دیگر این مطلب را لایک کرده اند', style:TextStyle(fontWeight:FontWeight.w700) )
  ),
    new Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Container(
              width: 40,
              height: 40,
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage
                    (
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_960_720.jpg"
                      )
                  )
              ),
              margin: EdgeInsets.only(left:5.0,right: 12.0)
            ),
            new Expanded(
                child: new TextField(
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    hintText: "اضافه کردن یک نظر...",
                    hintStyle: TextStyle(fontWeight: FontWeight.w500)
                  ),

                )
            )
          ],
        ),

    ),
    new Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
       child: new Text("1 روز قبل", style: TextStyle(color: Colors.grey),)
        
    )

  ],

);
  @override
  Widget build(BuildContext context) {
    var devicesize=MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5,
        itemBuilder: (context,index){
       return index==0
            ? new SizedBox(
         child: new ListStories(),
         height: devicesize.height* 0.15,
       )
            : instaPost;
        }
    );


  }
}