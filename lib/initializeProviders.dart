import 'package:duck/auth_screen/auth_controller.dart';
import 'package:duck/create_post_screen/create_post_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

///Home
final createPostControllerProvider = ChangeNotifierProvider<CreatePostController>((ref) => CreatePostController());
final authControllerControllerProvider = ChangeNotifierProvider<AuthController>((ref) => AuthController());