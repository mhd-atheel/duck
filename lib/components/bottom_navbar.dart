import 'package:duck/chat_screen/chat_view.dart';
import 'package:duck/create_post_screen/create_post_view.dart';
import 'package:duck/global_colors.dart';
import 'package:duck/home_screen/home_view.dart';
import 'package:duck/peoples_screen/people_view.dart';
import 'package:duck/profile_screen/profile_view.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: _buildBottomNavigationBar(),
      body: _buildPageContent(),
    );
  }

  Widget _buildPageContent() {

    return IndexedStack(
      index: currentIndex,
      children: const [
        HomeView(),
        PeopleView(),
        CreatePostView(),
        ChatView(),
        ProfileView(),
      ],
    );
  }
  Widget _buildBottomNavigationBar() {
    // Set your desired background color here

    return BottomNavigationBar(
      currentIndex: currentIndex,
      // selectedItemColor: GlobalVariables.mainColor,
      unselectedItemColor:const Color(0xffB4ACAD),
      unselectedFontSize: 10,
      selectedFontSize: 12,
      selectedItemColor: GlobalColor.mainColor,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      onTap: (int newIndex) {
        // Update the selected index when a tab is tapped
        setState(() {
          currentIndex = newIndex;
        });
      },
      items:  [
        BottomNavigationBarItem(
            icon:Image.asset('assets/icons/home.png',width: 25,height: 25),
            label: 'Home',
            activeIcon:Image.asset('assets/icons/selectHome.png',width: 25,height: 25)
        ),
        BottomNavigationBarItem(
            icon:Image.asset('assets/icons/users.png',width: 25,height: 25),
            label: 'Peoples',
            activeIcon:Image.asset('assets/icons/selectUsers.png',width: 25,height: 25)
        ),
        BottomNavigationBarItem(
            icon:Image.asset('assets/icons/add.png',width: 25,height: 25),
            label: 'Create',
            activeIcon:Image.asset('assets/icons/selectAdd.png',width: 25,height: 25)
        ),
        BottomNavigationBarItem(
            icon:Image.asset('assets/icons/message.png',width: 25,height: 25),
            label: 'Chats',
            activeIcon:Image.asset('assets/icons/selectMessage.png',width: 25,height: 25)
        ),
        BottomNavigationBarItem(
            icon:Image.asset('assets/icons/profile.png',width: 25,height: 25),
            label: 'Profile',
            activeIcon:Image.asset('assets/icons/selectProfile.png',width: 25,height: 25)
        ),


      ],
    );
  }

}
