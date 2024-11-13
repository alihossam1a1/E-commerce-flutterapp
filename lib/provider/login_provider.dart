import 'package:flutter/material.dart';
import '../model/shop_model.dart';
import '../serviece/login_servieces.dart';
class LoginProvider extends ChangeNotifier
{
  RegistrationModel? registrationModel;

  Future login (email, password) async
  {
    try
    {
      await LoginService.addData(email, password);
      notifyListeners();

    }
    catch(e)
    {
      print(e);
    }

  }
}