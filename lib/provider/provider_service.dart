import 'package:flutter/cupertino.dart';

import '../modelclasses/responseapiModel.dart';

class userdetailsProvider with ChangeNotifier{
  ResponseapiModel responsedata=ResponseapiModel();
  ResponseapiModel get userdetails=>responsedata;

  //---------seting the value
  void setUserDetails(Map<String,dynamic>userdetails){
    responsedata=ResponseapiModel.fromJson(userdetails);
    notifyListeners();
  }

  void setUserFromModel(ResponseapiModel userdetails){
    responsedata=userdetails;
    notifyListeners();
  }
}