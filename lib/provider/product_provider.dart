import 'package:flutter/material.dart';
import '../model/products_model.dart';
import '../serviece/products_serviece.dart';

class productprovider extends ChangeNotifier
{
  data_model? obj;
  Future<void> fech()async
  {
    obj=await data_serviecs.get();
    notifyListeners();
  }
}