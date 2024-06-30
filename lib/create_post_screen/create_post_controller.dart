import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:toastification/toastification.dart';

import '../services/utils.dart';

class CreatePostController extends ChangeNotifier {
  final imagePicker = ImagePicker();
  File? image;
  String? downloadURL;
  TextEditingController thoughtsController = TextEditingController();
  FirebaseFirestore fireStore = FirebaseFirestore.instance;
  FirebaseStorage firebaseStorage = FirebaseStorage.instance;
  bool isThoughtsNull = false;
  bool isCreatePost = false;
  List<String> list = <String>['Public', 'Private'];


  Future createPost(BuildContext context) async {
    isCreatePost = true;
    notifyListeners();

    if (thoughtsController.text.isNotEmpty  && image !=null) {

      try {
        final postTime = DateTime.now().millisecondsSinceEpoch.toString();

        Reference ref = firebaseStorage
            .ref()
            .child('posts')
            .child(FirebaseAuth.instance.currentUser!.uid)
            .child(postTime);
        await ref.putFile(image!);

        downloadURL = await ref.getDownloadURL();

        print(downloadURL);

        await fireStore.collection("Posts").add({
          'userId': FirebaseAuth.instance.currentUser!.uid,
          'imageUrl': downloadURL,
          'thoughts': thoughtsController.text,
          'createdAt': Timestamp.now(),
          'likes': 0,
          'comments': 0,
          'audience': "public",
        }).then((value){
          thoughtsController.clear();
          notifyListeners();
          image = null;
          notifyListeners();
          isCreatePost = false;
          notifyListeners();
          Utils.customSnackBar(context,"Post created successfully",ToastificationType.success);
        });
      }on FirebaseAuthException catch (e){
        isCreatePost = false;
        notifyListeners();
        Utils.customSnackBar(context,"something went wrong",ToastificationType.error);
      }




    } else if(thoughtsController.text.isNotEmpty){
      try{
        await fireStore.collection("Posts").add({
          'userId': FirebaseAuth.instance.currentUser!.uid,
          'thoughts': thoughtsController.text,
        }).then((value){
          thoughtsController.clear();
          notifyListeners();
          image = null;
          notifyListeners();
          isCreatePost = false;
          notifyListeners();
          Utils.customSnackBar(context,"Post created successfully",ToastificationType.success);
        });
      }on FirebaseException catch(e){
        isCreatePost = false;
        notifyListeners();
        Utils.customSnackBar(context,"something went wrong",ToastificationType.error);
      }
    }
    else {
      isCreatePost = false;
      notifyListeners();
      Utils.customSnackBar(context,"Please add your thoughts",ToastificationType.error);
      isThoughtsNull = true;
      notifyListeners();
    }
  }

  Future imagePickerMethod(ImageSource source) async {
    final pick = await imagePicker.pickImage(source: source);

    if (pick != null) {
      image = File(pick.path);
      notifyListeners();

      print(image);
    }
  }

  void closeGalleryImage() {
    image = null;
    notifyListeners();
  }

  void clearThoughtsWarning ( val){
     if(val !=null){
       isThoughtsNull = false;
       notifyListeners();
     }
  }

}
