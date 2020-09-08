import 'package:flutter/material.dart';

import 'package:flutter_booksindynamiclistview/packages/second.dart';


class Ggg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var a = "https://media0.giphy.com/media/dCERkihZ9m7xjIvSau/giphy.gif?cid=6c09b952f7a5d713eeeb975b1a772441214c84fdb995f913&rid=giphy.gif";
    return SizedBox.expand(
      child: Container(
        color: Color(0xffEECDA3),
        child: Center(
          child: GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>(Next())));
            },
            child: Container(

              height: 150,
              width: 150,


              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image:DecorationImage(image: NetworkImage(a))
              ),

            ),
          ),
        ),
      ),
    );
  }
}