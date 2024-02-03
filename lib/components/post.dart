import 'package:duck/global_colors.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      width:width,
      // margin: const EdgeInsets.symmetric(horizontal: 15),

      child: Column(
        children: [
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: SizedBox.fromSize(
                size: const Size.fromRadius(22),
                child: Image.asset('assets/images/profile.png'),
              ),
            ),
            title: Text(
              'Kokki Kumar',
              style: TextStyle(
                fontSize: 15,
                color: GlobalColor.blackBold
              ),
            ),
            subtitle: Text(
              'Jan 12',
              style: TextStyle(
                fontSize: 13,
                color: GlobalColor.blackNormal,
                fontWeight:FontWeight.w300
              ),
            ),
          ),
          Padding(
            padding:EdgeInsets.symmetric(horizontal: width *0.045),
            child: Image.asset(
              'assets/images/post.png',
              width: width,
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
    );
  }
}
