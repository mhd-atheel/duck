import 'package:duck/create_post_screen/create_post_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

///Home
final createPostControllerProvider = ChangeNotifierProvider<CreatePostController>((ref) => CreatePostController());