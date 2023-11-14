

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:getxexample/Utilities/colors.dart';

class Utilies{

  static void  fieldfocusNode(BuildContext context,FocusNode current, FocusNode next){
    current.unfocus();
    FocusScope.of(context).requestFocus(next);
  }

  void toastMessage(String message){
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        textColor: AppColors.whitecolor,
        backgroundColor: Colors.red,
        fontSize: 16.0
    );
  }

  void emailcheck(){
    
  }
}