import 'package:dio/dio.dart';
import '../model/shop_model.dart';

class SignUpService
{
  static Dio dio = Dio();
  static Future<void> addData (String name ,String email , String password,String num) async
  {
    Response response = await dio.post("https://student.valuxapps.com/api/register",
        data: {
          "username": name,
          "email":email,
          "password" : password,
          "phone": num,
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
  }
}