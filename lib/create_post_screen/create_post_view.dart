import 'package:duck/create_post_screen/create_post_controller.dart';
import 'package:duck/initializeProviders.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../global_colors.dart';

class CreatePostView extends ConsumerWidget {
  const CreatePostView({super.key});

  @override
  Widget build(BuildContext context , WidgetRef ref) {
    CreatePostController createPostController = ref.watch(createPostControllerProvider);
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Text('hello')),
          createPostController.image != null ?
              Image.file(createPostController.image!):
              Image.asset('assets/images/profile.png')
          ,
          ElevatedButton(onPressed: (){
             createPostController.imagePickerMethod();
          }, child:const Text("Image")),
          ElevatedButton(onPressed: (){
            createPostController.closeGalleryImage();
          }, child:const Text("Close"))

        ],
      ),
    );
  }
}
