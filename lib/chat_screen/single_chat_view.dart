import 'package:flutter/material.dart';

import '../global_colors.dart';

class SingleChatView extends StatelessWidget {
   SingleChatView({super.key});
  List<dynamic> messages = [
    {
      "message":"Lorem ipsum dolor sit amet, consectetur",
      "usertype":"sender",
      "time":"5.25",
    },
    {
      "message":"Lorem ipsum dolor sit amet, consectetur"
          " adipiscing elit, sed do eiusmod tempor incididunt "
          "ut labore et dolore magna aliqua.",
      "usertype":"receiver",
      "time":"5.25",
    },
    {
      "message":"Lorem ipsum dolor sit amet, consectetur"
          " adipiscing elit, sed do eiusmod tempor incididunt "
          "ut labore et dolore magna aliqua.",
      "usertype":"sender",
      "time":"5.25",
    },
    {
      "message":"Lorem ipsum dolor sit amet, consectetur",
      "usertype":"sender",
      "time":"5.25",
    },
    {
      "message":"Lorem ipsum dolor sit amet, consectetur",
      "usertype":"receiver",
      "time":"5.25",
    },
    {
      "message":"Lorem ipsum dolor sit amet, consectetur"
          " adipiscing elit, sed do eiusmod tempor incididunt "
          "ut labore et dolore magna aliqua.",
      "usertype":"receiver",
      "time":"5.25",
    },
    {
      "message":"Lorem ipsum dolor sit amet, consectetur",
      "usertype":"sender",
      "time":"5.25",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        titleSpacing: 5,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: const Color(0xffE8ECF4)
              )
            ),
            child: const Center(child: Icon(Icons.arrow_back_ios_outlined,color: Color(0xff1E232C),)),
          ),
        ),
        title: Text(
          'Sai Pallavi',
          style: TextStyle(
              color: GlobalColor.blackBold,
              fontWeight: FontWeight.w500,
              fontSize: 20
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Image.asset('assets/images/profile2.png',width: 40,),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: height*0.03,),
            Expanded(
              child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder:(context ,index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 0),
                      child: Row(
                        mainAxisAlignment:
                        messages[index]['usertype'] == 'sender'?MainAxisAlignment.start
                            :MainAxisAlignment.end
                        ,
                        children: [
                          Column(
                            crossAxisAlignment:
                            messages[index]['usertype'] == 'sender'?CrossAxisAlignment.start
                                :CrossAxisAlignment.end
                            ,
                            children: [
                              Container(
                                width: width/1.5,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color:messages[index]['usertype'] == 'sender'?
                                    GlobalColor.mainColor: const Color(0xffE8ECF4),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                        messages[index]['usertype'] == 'sender'?
                                        0: 20,
                                      ),
                                      topRight: Radius.circular(
                                        messages[index]['usertype'] == 'sender'?
                                        20:0,
                                      ),
                                      bottomLeft: const Radius.circular(20),
                                      bottomRight: const Radius.circular(20),
                                    )
                                ),
                                child: Text(
                                  messages[index]['message'],
                                  style: TextStyle(
                                    color: messages[index]['usertype'] == 'sender'?
                                    Colors.white:GlobalColor.blackNormal ,
                                    fontSize: 12
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${messages[index]['time']} PM'
                                      ,
                                      style: TextStyle(
                                          color:GlobalColor.mainColor,
                                          fontSize: 10
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  }
              ),
            ),
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
                            hintText: 'Message',
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
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width/8,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffE8ECF4),

                    ),
                    child: Center(
                      child: Icon(
                        Icons.send_rounded,
                        color: GlobalColor.mainColor,
                        size: 20,
                      )
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
