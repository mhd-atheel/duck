import 'package:duck/components/post.dart';
import 'package:duck/global_colors.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Duck',
          style: TextStyle(
            color: GlobalColor.mainColor,
            fontWeight: FontWeight.bold,
            fontSize: 25
          ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Image.asset('assets/images/profile.png',width: 40,),
          )
        ],
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0,top: 8,bottom: 8,right: 8),
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
                          hintText: 'What’s on your mind',
                          hintStyle: TextStyle(
                            color: Color(0xff8391A1),
                            fontSize: 15
                          )
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width/5,
                    decoration: BoxDecoration(
                        color: const Color(0xffE8ECF4),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(
                      child: Text(
                        'Post',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: GlobalColor.mainColor
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),

            const Post(
              image: 'assets/images/post.png',
              profile: 'assets/images/profile.png',
              name: 'Kokki Kumar',
            ),
            const Post(
              image: 'assets/images/post.png',
              profile: 'assets/images/profile2.png',
              name: 'Pallavi',
            )
          ],
        ),
      ),
    );
  }
}
