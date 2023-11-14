import 'package:getxexample/Repostiory/status.dart';

class ApiRespone<T>{
  Status? status;
  T? data;
  String? message;

 ApiRespone(this.data,this.message,this.status);
  ApiRespone.loading() :status = Status.LOADING;
  ApiRespone.completed(this.data) :status = Status.COMPLETED;
  ApiRespone.error(this.message) :status = Status.ERROR;


  @override
  String toString(){

     return "Status : $status \n  Message : $message \n  Data : $data";
  }
}