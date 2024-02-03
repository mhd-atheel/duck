import 'package:duck/global_colors.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  final String image;
  final String profile;
  final String name;

  const Post({super.key, required this.image, required this.profile, required this.name});

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
                child: Image.asset(widget.profile),
              ),
            ),
            title: Text(
              widget.name,
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
            trailing: const Icon(Icons.more_vert_outlined),
          ),
          Padding(
            padding:EdgeInsets.symmetric(horizontal: width *0.045),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'There are many variations of '
                        'passages of Lorem Ipsum available',
                    style: TextStyle(
                        fontSize: 13,
                        color: GlobalColor.blackNormal,
                        fontWeight:FontWeight.w300
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: height *0.01,),
          Padding(
            padding:EdgeInsets.symmetric(horizontal: width *0.045),
            child: Image.asset(
              widget.image,
              width: width,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: height *0.01,),
          Padding(
            padding:EdgeInsets.symmetric(horizontal: width *0.045),
            child: Row(
              children: [
                Image.asset('assets/icons/liked.png',
                  height: 22,
                  width: 22,
                ),
                SizedBox(width: width *0.02,),
                Text(
                  '1645',
                  style: TextStyle(
                      fontSize: 16,
                      color: GlobalColor.blackBold
                  ),
                ),
                SizedBox(width: width *0.05,),
                Text(
                  '12 Comments',
                  style: TextStyle(
                      fontSize: 15,
                      color: GlobalColor.blackBold
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
