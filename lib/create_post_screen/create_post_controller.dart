import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class CreatePostController extends  ChangeNotifier{

  final imagePicker = ImagePicker();
  File? image;




  Future imagePickerMethod() async {
    final pick = await imagePicker.pickImage(source: ImageSource.gallery);

      if (pick != null) {
        image = File(pick.path);
        notifyListeners();

        print(image);
      }

  }

  void closeGalleryImage (){
     image = null;
     notifyListeners();
  }


}