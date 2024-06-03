import 'package:duck/auth_screen/auth_controller.dart';
import 'package:duck/initializeProviders.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../global_colors.dart';

class AuthView extends ConsumerWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    AuthController authController = ref.watch(authControllerControllerProvider);
    final sizeWidth = (height - width / 4.5) / 2;
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: sizeWidth/2),

            Text(
              'Duck',
              style: TextStyle(
                  color: GlobalColor.mainColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 35),
            ),
            Text(
              authController.isLogin?'Welcome back! with duck': 'Cheems ready to connect with duck',
              style: TextStyle(
                  color: GlobalColor.blackNormal,
                  fontWeight: FontWeight.w200,
                  fontSize: 10),
            ),
            SizedBox(height: sizeWidth/5),
            if(!authController.isLogin)
              Padding(
                padding: const EdgeInsets.only(left: 15.0,top: 5,bottom: 15,right: 15),
                child: Container(
                  padding:const EdgeInsets.symmetric(horizontal: 20),
                  height: 50,
                  decoration: BoxDecoration(
                      color: const Color(0xffF7F8F9),
                      border: Border.all(
                        color: const Color(0xffE8ECF4),
                      ),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Name',
                        hintStyle: TextStyle(
                            color: Color(0xff8391A1),
                            fontSize: 15
                        )
                    ),
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,top: 5,bottom: 15,right: 15),
              child: Container(
                padding:const EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                decoration: BoxDecoration(
                    color: const Color(0xffF7F8F9),
                    border: Border.all(
                      color: const Color(0xffE8ECF4),
                    ),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email',
                      hintStyle: TextStyle(
                          color: Color(0xff8391A1),
                          fontSize: 15
                      )
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,top: 5,bottom: 0,right: 15),
              child: Container(
                padding:const EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                decoration: BoxDecoration(
                    color: const Color(0xffF7F8F9),
                    border: Border.all(
                      color: const Color(0xffE8ECF4),
                    ),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      hintStyle: TextStyle(
                          color: Color(0xff8391A1),
                          fontSize: 15
                      )
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,top: 30,bottom: 0,right: 5),
                  child: Text(
                    authController.isLogin?'Don\'t? have an account?':"Already have an account?",
                    style: TextStyle(
                        fontSize: 12,
                        color: GlobalColor.blackBold
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0,top: 30,bottom: 0,right: 15),
                  child: GestureDetector(
                    onTap: (){
                      authController.changeAuthStatus();
                    },
                    child: Text(
                      authController.isLogin?'Register':"Login",
                      style: TextStyle(
                          fontSize: 12,
                          color: GlobalColor.blackBold,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,top: 20,bottom: 0,right: 20),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color:  GlobalColor.mainColor,
                    borderRadius: BorderRadius.circular(8)
                ),
                child:  Center(
                  child: Text(
                      authController.isLogin?'Login':"Register",
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color:Colors.white
                    ),
                  ),
                ),
              ),
            )
        
          ],
        ),
      ),
    );
  }
}
