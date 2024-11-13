import 'package:dio/dio.dart';

import '../model/shop_model.dart';


class LoginService
{
  static Dio dio = Dio();
  static Future<RegistrationModel> addData (String email , String password) async
  {
    Response response = await dio.post("https://student.valuxapps.com/api/login",
        data: {
          "email":email,
          "password" : password,
        }
    );
    if(response.statusCode! >= 200 && response.statusCode! < 300)
    {
      print(response.data);
    }
    else
    {
      throw Exception("Server Error ");
    }
    return RegistrationModel.fronJson (response.data);
  }
}