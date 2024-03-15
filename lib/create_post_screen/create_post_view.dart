import 'package:duck/create_post_screen/create_post_controller.dart';
import 'package:duck/initializeProviders.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../global_colors.dart';

class CreatePostView extends ConsumerWidget {
  const CreatePostView({super.key});

  void _settingModalBottomSheet(context,createPostController) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 150,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 15.0, top: 10, right: 15, bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Select Image From"),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          Navigator.pop(context);
                          createPostController.imagePickerMethod();
                        },
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.camera_alt_outlined),
                            Text(
                              "Camera",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                          createPostController.imagePickerMethod();
                        },
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.image),
                            Text(
                              "Gallery",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }

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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0,top: 8,bottom: 0,right: 15),
                child: Row(
                  children: [
                    Text(
                      'Whats on your mind?',
                      style: TextStyle(
                          fontSize: 18,
                          color: GlobalColor.blackBold
                      ),
                    ),
                    const Text(
                      ' *',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.red
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0,top: 8,bottom: 8,right: 15),
                  child: Container(
                    padding:const EdgeInsets.symmetric(horizontal: 20),
                    height: 100,
                    decoration: BoxDecoration(
                        color: const Color(0xffF7F8F9),
                        border: Border.all(
                          color: const Color(0xffE8ECF4),
                        ),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: TextFormField(
                      maxLines: 4,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'add your thoughts...',
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
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0,top: 5,bottom: 0,right: 15),
                child: Text(
                  'Your capture?',
                  style: TextStyle(
                      fontSize: 18,
                      color: GlobalColor.blackBold
                  ),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              _settingModalBottomSheet(context,createPostController);
            },
            child: Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    // 0xfff2f2f2  - like a gray
                      color: const Color(0xffF7F8F9),
                      border: Border.all(
                        color: const Color(0xffE8ECF4),
                      ),
                      borderRadius: BorderRadius.circular(5),
                      ),
                  child: createPostController.image == null
                      ? const SizedBox(
                    height: 150,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.image,
                            size: 50,
                          ),
                          Text("Select Image")
                        ],
                      ),
                    ),
                  )
                      : Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Image.file(createPostController.image!,fit: BoxFit.fill,),
                      ),
                      const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.image,
                              size: 50,

                              color: Colors.white,
                            ),
                            Text(
                              "Select Image",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                          top: 10,
                          right: 5,
                          child: GestureDetector(
                            onTap: () {
                              createPostController.closeGalleryImage();
                            },
                            child: const CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(Icons.close)),
                          ))
                    ],
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0,top: 50,bottom: 0,right: 15),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color:  GlobalColor.mainColor,
                  borderRadius: BorderRadius.circular(8)
              ),
              child: const Center(
                child: Text(
                  'create post',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color:Colors.white
                  ),
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}
