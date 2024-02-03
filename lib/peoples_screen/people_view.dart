import 'package:flutter/material.dart';

import '../global_colors.dart';

class PeopleView extends StatelessWidget {
  const PeopleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                              hintText: 'Search peoples',
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
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(22),
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(22),
                        child: Image.asset('assets/images/profile.png'),
                      ),
                    ),
                  )
                ],
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder:(context,index){
                    return ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(22),
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(22),
                          child: Image.asset('assets/images/profile2.png'),
                        ),
                      ),
                      title: Text(
                        'Mohamed Atheel',
                        style: TextStyle(
                            fontSize: 15,
                            color: GlobalColor.blackBold
                        ),
                      ),
                      subtitle: Text(
                        'Dug Dug Dang',
                        style: TextStyle(
                            fontSize: 13,
                            color: GlobalColor.blackNormal,
                            fontWeight:FontWeight.w300
                        ),
                      ),
                    );
                  }
              )
            ],
          ),
        ),
      ),
    );
  }
}
