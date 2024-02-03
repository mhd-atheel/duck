import 'package:duck/components/post.dart';
import 'package:duck/global_colors.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Duck',
          style: TextStyle(
            color: GlobalColor.mainColor,
            fontWeight: FontWeight.bold,
            fontSize: 25
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Image.asset('assets/images/profile.png',width: 40,),
          )
        ],
      ),
      body:  Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 8),
            child: Container(
              padding:const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              width: MediaQuery.of(context).size.width,
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
                  hintText: 'What’s on your mind',
                  hintStyle: TextStyle(
                    color: Color(0xff8391A1),
                    fontSize: 15
                  )
                ),
              ),
            ),
          ),
          const Post()
        ],
      ),
    );
  }
}
