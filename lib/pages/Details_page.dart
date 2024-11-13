import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  var image;
  var title;
  var des;
  DetailsPage({required this.image,required this.des,required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center( child: Text("Product Details"),),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Container(
                    color: Colors.white,
                    width:300,
                    height: 300,
                    child:   Image.network(image),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(width:300,child: Text(title,style: TextStyle(color: Colors.black),)),
                  ),
                  Container(width:300,child: Text(des,style: TextStyle(color: Colors.black),)),
                ],

              ),
            ),
          ],
        ),
      ),
    );
  }
}
