  class AppException implements Exception{
    final message;
    final prefix;

    AppException([this.message,this.prefix]);
    String  tostring(){
      return '$message$prefix';
    }
  }
  //When Internet not connected
  class InternetException extends AppException{
    InternetException([String? message]) :super(message ,"No Internet");
  }
  //when apis does not respone within 10 second then show this exception
  class FetchException extends AppException{
    FetchException([String? message]):super(message,"");
  }
  //when URL and Route does not exit on this Server then show this exception
class BedExceptionRequest extends AppException{
  BedExceptionRequest([String? message]):super(message , "Invalid Request");
}


//when User does not Authorized then show this exception
class UnauthorizedException extends AppException{
  UnauthorizedException([String? message]):super(message , "Unauthorized Request");
}

//when User does not Authorized then show this exception
class InvalidInputException extends AppException{
  InvalidInputException([String? message]):super(message , "Invalid  Input");
}