import 'dart:math';

import 'package:flutter/material.dart';
import 'package:instagram_clone/click.dart';

class Body extends StatelessWidget {
  Widget card() {
    List a = [
      "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg",
      "https://www.w3schools.com/w3css/img_forest.jpg",
      "https://static.addtoany.com/images/dracaena-cinnabari.jpg",
      "https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png",
      "https://www.w3schools.com/css/img_5terre.jpg",
    ];

    return Container(
      margin: EdgeInsets.only(bottom: 20),
      width: double.infinity, height: 300,
      // decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.red)),

      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          CircleAvatar(backgroundImage: NetworkImage('https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png'),),
                          Container(
                              margin: EdgeInsets.only(left: 5),
                              child: Text(
                                "Rockingpg0",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                Opacity(
                    opacity: 0.7,
                    child: Click(Icon(
                      Icons.more_vert,
                    ))),
              ],
            ),
          ),
          Expanded(
              flex: 9,
              child: Container(
                  decoration: BoxDecoration(
                image: new DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(a[new Random().nextInt(a.length)])),
              ))),
          Expanded(
            flex: 2,
            child: Container(
              child: Row(
                children: [
                Click(Icon(Icons.favorite_border,size: 28,)),
                Click(Icon(Icons.mode_comment_outlined,size: 28,))
              ],),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [for (var i = 0; i < 10; i++) card()],
      ),
    );
  }
}
