import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ListStories extends StatelessWidget{
   ListStories({Key? key}) : super(key: key);
  Widget topText = new Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween ,
    children: <Widget>[
      new Text(
        "استوری ها",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      new Row(
        children: [
          new Icon(Icons.play_arrow),
          new Text("مشاهده همه", style: TextStyle(fontWeight: FontWeight.bold)),

        ],
      )
    ],
  );

  final stories = new Expanded(
      child: new Padding(
          padding: const EdgeInsets.only( top: 8.0),
        child: new ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context,index){
              return new Stack(
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
                    margin: EdgeInsets.symmetric(
                      horizontal: 5.0
                    ),
                  ),
                  index==0
                  ?new Positioned(
                    right:5.0,
                      bottom: 0.0,
                      child:new CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        radius:10,
                        child: new Icon(
                          Icons.add,
                          size: 14.0,
                          color: Colors.white,
                        ),
                      ))
                   : new Container()
                ],
              );
            }),
      )
  );

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.all(16.0),
      child: new Column(

        children: <Widget>[
          topText,
          stories
        ],
      ),
    );
  }
}

