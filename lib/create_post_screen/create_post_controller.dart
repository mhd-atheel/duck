import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class CreatePostController {

  final imagePicker = ImagePicker();
  static File? _image;

  final counterStateProvider = StateProvider<int>((ref) =>10
  );



  Future imagePickerMethod() async {
    final pick = await imagePicker.pickImage(source: ImageSource.gallery);

      if (pick != null) {
        _image = File(pick.path);
        print(_image);
      }

  }

}