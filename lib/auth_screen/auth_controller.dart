import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../services/utils.dart';

class AuthController extends ChangeNotifier {
    bool isLogin = true;
    bool isLoading = false;
    final firebaseAuth = FirebaseAuth.instance;
    final fireStore = FirebaseFirestore.instance;
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController nameController = TextEditingController();

    void changeAuthStatus (){
      isLogin =!isLogin;
      notifyListeners();
    }

    void currentStatus (context){
      if(isLogin){
        login(context);
      }
      else{
        register(context);
      }
    }


    Future login (BuildContext context)async{
      isLoading = true;
      notifyListeners();
      try{
        await firebaseAuth.signInWithEmailAndPassword(
            email: emailController.text,
            password: passwordController.text
        ).then((value){
          Utils.customSnackBar(context,"Login Success",ToastificationType.success);
          isLoading = false;
          notifyListeners();
        });
      }on FirebaseAuthException catch (e){
        if (e.code == 'user-not-found' || e.code == 'wrong-password') {
          Utils.customSnackBar(context,"email or password is wrong",ToastificationType.error);
          isLoading = false;
          notifyListeners();
        }
        else {
          Utils.customSnackBar(context,"Something went wrong",ToastificationType.error);
          isLoading = false;
          notifyListeners();
        }
      }
    }


    Future register (BuildContext context)async{
      isLoading = true;
      notifyListeners();
      try{
        await firebaseAuth.createUserWithEmailAndPassword(
            email: emailController.text,
            password: passwordController.text
        ).then((value){
          fireStore.collection("Users").doc(value.user!.uid).set(
            {
              'name': nameController.text,
              'email': emailController.text,
              'password': passwordController.text,
              'userId': value.user!.uid,
            }
          );
          Utils.customSnackBar(context,"Register Success",ToastificationType.success);
          isLoading = false;
          notifyListeners();
        });
      }on FirebaseAuthException catch (e){
        if (e.code == 'weak-password') {
          Utils.customSnackBar(context,"The password provided is too weak.",ToastificationType.warning);
          isLoading = false;
          notifyListeners();
        } else if (e.code == 'email-already-in-use') {
          Utils.customSnackBar(context,"The account already exists for that email.",ToastificationType.warning);
          isLoading = false;
          notifyListeners();
        }
      }catch (e) {
        isLoading = false;
        notifyListeners();

      }
    }


}