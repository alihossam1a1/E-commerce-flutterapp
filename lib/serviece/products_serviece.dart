import 'package:dio/dio.dart';
import '../model/products_model.dart';

class data_serviecs
{
  static Dio dio=Dio();
  static Future<data_model> get()async
  {
    var res=await dio.get("https://student.valuxapps.com/api/home");
    return data_model.fromjson(res.data);
  }
}