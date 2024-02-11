import 'package:flutter/material.dart';

import '../global_colors.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Profile',
          style: TextStyle(
              color: GlobalColor.mainColor,
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
        automaticallyImplyLeading: false,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.settings_outlined,
              size: 27,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(width / 6),
              child: SizedBox.fromSize(
                size: Size.fromRadius(width / 6),
                child: Image.asset(
                  'assets/images/profile.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Text(
            'Mohamed Atheel',
            style: TextStyle(
                fontSize: 25,
                color: GlobalColor.blackBold,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.08),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'It is a long established fact that a reader will '
                    'be distracted by the readable content of a page '
                    'when looking at its layout',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 13,
                        color: GlobalColor.blackNormal,
                        fontWeight: FontWeight.w100),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: width * 0.1,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Posts',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: width * 0.18,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Followers',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: width * 0.18,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Followings',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: width * 0.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '05',
                        style: TextStyle(
                            fontSize: 15,
                            color: GlobalColor.mainColor,
                            fontWeight: FontWeight.normal
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: width * 0.18,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '1325',
                        style: TextStyle(
                            fontSize: 15,
                            color: GlobalColor.mainColor,
                            fontWeight: FontWeight.normal
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: width * 0.18,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '1200',
                        style: TextStyle(
                            fontSize: 15,
                            color: GlobalColor.mainColor,
                            fontWeight: FontWeight.normal
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            ),
          )
        ],
      ),
    );
  }
}
