import 'package:duck/create_post_screen/create_post_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../global_colors.dart';

class CreatePostView extends ConsumerWidget {
  const CreatePostView({super.key});

  @override
  Widget build(BuildContext context , WidgetRef ref) {
    final value = ref.watch(CreatePostController().counterStateProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Create Post',
          style: TextStyle(
              color: GlobalColor.mainColor,
              fontWeight: FontWeight.bold,
              fontSize: 25
          ),
        ),
        automaticallyImplyLeading: false,

      ),
      body: Column(
        children: [
          Text(value.toString()),

          ElevatedButton(onPressed: (){
            CreatePostController().imagePickerMethod();
          }, child:const Text("Image"))

        ],
      ),
    );
  }
}
