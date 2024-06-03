import 'package:flutter/material.dart';

class AuthController extends ChangeNotifier {
    bool isLogin = true;
    

    void changeAuthStatus (){
      isLogin =!isLogin;
      notifyListeners();
    }



}