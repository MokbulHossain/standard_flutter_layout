
import 'package:dio/dio.dart';

class ApiMethods{

  static BaseOptions options = new BaseOptions(
    baseUrl: "http://expensemanagment.shunnosoft.com/api/",
    connectTimeout: 5000,
    receiveTimeout: 3000,
       headers:{
         'Module':'fd1be8e8-5f9d-4861-a567-78cfbc07f4bc'
       }
  );
   static Dio dio = new Dio(options);

   //get method....
   static GetData (String url,{var queryparameters=null}) async{
     /*dio.options.headers = {
       'Module':'fd1be8e8-5f9d-4861-a567-78cfbc07f4bc'
     };*/
     try {

       var response = await dio.get(url, queryParameters: queryparameters);
       return response;

     } on DioError catch(e) {
       print(e);
       return false;
     }
  }

  //post method.....
 /* static PostData (String url,{var data=null}) async{
    try {
      var response =  await dio.post(url, data: data);
      return response;
    } on DioError catch(e) {
      print(e);
      return false;
    }
  }

  //download file...
  static DownloadResources (String url,{var data=null}) async{
    try {
      var response =  await dio.download("https://www.google.com/", "./xx.html");
      return response;
    } on DioError catch(e) {
      print(e);
      return false;
    }
  }
*/
  //formdata example...
  /*
  FormData formdata = FormData.fromMap({
                          "name": "wendux",
                          "age": 25,
                          "file": await MultipartFile.fromFile("./text.txt",filename: "upload.txt"),
                          "files": [
                                  await MultipartFile.fromFile("./text1.txt", filename: "text1.txt"),
                                  await MultipartFile.fromFile("./text2.txt", filename: "text2.txt"),
                               ]
                          });
*/



  //Listening the uploading progress:
  /*
  response = await dio.post(
    "http://www.dtworkroom.com/doris/1/2.0.0/test",
    data: {"aa": "bb" * 22},
    onSendProgress: (int sent, int total) {
      print("$sent $total");
    },
  );
  */
}