import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  var image;
  var name;

  Item({required this.image,required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            child: Card(
                color: Colors.white,
                child: Column(children: [
                 Container(
                   width: 100,
                     height: 100,
                     child: Image.network(image))  ,
                  Text(name ,style: TextStyle(color: Colors.black),),

                
                ],) 
                
            ),
          )
        ],
      ),
    );
  }
}
