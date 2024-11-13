import 'package:flutter/material.dart';

import '../model/shop_model.dart';
import '../serviece/registration_service.dart';

class SignUpProvider extends ChangeNotifier
{
  RegistrationModel? registrationModel;

  Future signup (name, email, password,num) async
  {
    try
    {
      await SignUpService.addData(name, email, password,num);
      notifyListeners();
    }
    catch(e)
    {
      print(e);
    }
  }
}