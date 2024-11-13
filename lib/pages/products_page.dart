import 'package:ali0522009/pages/Details_page.dart';
import 'package:ali0522009/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgits/widgit_pade.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<productprovider>(context);
    pro.fech();
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Product")),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: pro.obj?.data.length,
        itemBuilder: (context, index) {
          return GestureDetector(child:Item(image: pro.obj?.data[index]["image"], name: pro.obj?.data[index]["name"],),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>
                DetailsPage(
                    image: pro.obj?.data[index]["image"],
                    des: pro.obj?.data[index]["name"],
                    title: pro.obj?.data[index]["description"])));

          },);
        },

      ),


    );
  }
}
