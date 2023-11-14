import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:getxexample/Data/AppException.dart';
import 'package:getxexample/Data/BaseApi_Services.dart';
import 'package:http/http.dart'as http;

class NetworkApiServices extends BaseApiServices{
    Future<dynamic> getApi(String url) async{
      dynamic jsonRespone;
      try{
        final respone = await http.get(Uri.parse(url)).timeout( const Duration(seconds: 10));
         jsonRespone = returnResponse(respone);

      }on SocketException{
        throw InternetException('');
      }

      return jsonRespone;




    }

     Future<dynamic> postApi( var data ,String url) async{
      if(kDebugMode){
        print(url);
        print(data);
      }
      dynamic jsonRespone;
      try{
        final respone = await http.post(Uri.parse(url),
        body: jsonEncode(data)).timeout( const Duration(seconds: 10));
         jsonRespone = returnResponse(respone);

      }on SocketException{
        throw InternetException('');
      }

      return jsonRespone;




    }

    dynamic returnResponse(http.Response response){
      switch(response.statusCode){
        case 200:
        dynamic jsonRespone = jsonDecode(response.body);
        return jsonRespone;
         case 400:
         throw  UnauthorizedException();
         default:
        throw  FetchException('Error Accured while commmunication'+response.statusCode.toString());
      }
    }

       
    
}