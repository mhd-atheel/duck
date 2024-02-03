import 'package:flutter/material.dart';

import '../global_colors.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0,top: 8,bottom: 8,right: 15),
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
                            hintText: 'Search chats',
                            hintStyle: TextStyle(
                                color: Color(0xff8391A1),
                                fontSize: 15
                            )
                        ),
                      ),
                    ),
                  ),
                ),
        
              ],
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder:(context,index){
                  return Column(
                    children: [
                      ListTile(
                        horizontalTitleGap: 15,
                        minLeadingWidth: 0,
                        titleAlignment: ListTileTitleAlignment.center,
                        minVerticalPadding: 0, // else 2px still present
                        dense: true, // else 2px still present
                        visualDensity: VisualDensity.compact, // Else theme will be use
                        contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(22),
                          child: SizedBox.fromSize(
                            size: const Size.fromRadius(22),
                            child: Image.asset('assets/images/profile2.png'),
                          ),
                        ),
                        title: Text(
                          'Sai Pallavi',
                          style: TextStyle(
                              fontSize: 15,
                              color: GlobalColor.blackBold
                          ),
                        ),
                        subtitle: Text(
                          'How about you ?',
                          style: TextStyle(
                              fontSize: 12,
                              color: GlobalColor.blackNormal,
                              fontWeight:FontWeight.w100
                          ),
                        ),
                        trailing: CircleAvatar(
                          radius: 10,
                          backgroundColor: GlobalColor.mainColor,
                          child: const Center(
                              child: Text('5',style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),)
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            right:width *0.05,
                            left:width *0.2,
                        ),
                        child: const Divider(
                          height: 12,
                          thickness: 0.5,
                          color: Color(0xffDCDCDC),
                        ),
                      )
                    ],
                  );
                }
            )
          ],
        ),
      ),
    );
  }
}
