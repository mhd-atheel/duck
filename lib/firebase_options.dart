// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBCOhnVYyvTsfsXnb0usNupeMkzLRyymAo',
    appId: '1:1046630909949:web:64b9fb9c836f14113cfb94',
    messagingSenderId: '1046630909949',
    projectId: 'duck-3e1bf',
    authDomain: 'duck-3e1bf.firebaseapp.com',
    storageBucket: 'duck-3e1bf.appspot.com',
    measurementId: 'G-0211H3EKK7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBM1-QCmXWG6lkJcT8GqiR5SBs1FcdLiVY',
    appId: '1:1046630909949:android:0819b8a458b317b73cfb94',
    messagingSenderId: '1046630909949',
    projectId: 'duck-3e1bf',
    storageBucket: 'duck-3e1bf.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAB9_yz4ubUlaJ-q3tS-d9aYb0p4lJ6dxQ',
    appId: '1:1046630909949:ios:d838af5a091e4a4c3cfb94',
    messagingSenderId: '1046630909949',
    projectId: 'duck-3e1bf',
    storageBucket: 'duck-3e1bf.appspot.com',
    iosBundleId: 'com.example.duck',
  );
}
