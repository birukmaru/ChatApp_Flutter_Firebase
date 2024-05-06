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
        return macos;
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
    apiKey: 'AIzaSyCxpOw1xTGu6bYV7u_JrPiMHpThY41x1Wc',
    appId: '1:664812122748:web:340b7bad6f9bef26eccff9',
    messagingSenderId: '664812122748',
    projectId: 'chatbrak-88eb5',
    authDomain: 'chatbrak-88eb5.firebaseapp.com',
    storageBucket: 'chatbrak-88eb5.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC-G1IydX1I9YalKT8ZCe_BtjB2OO9gMok',
    appId: '1:664812122748:android:e39775eae0bc662aeccff9',
    messagingSenderId: '664812122748',
    projectId: 'chatbrak-88eb5',
    storageBucket: 'chatbrak-88eb5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBy_93NXkI5uaNuD-JcOSixtGK6aHiaC7I',
    appId: '1:664812122748:ios:07b843d1b1e3a15aeccff9',
    messagingSenderId: '664812122748',
    projectId: 'chatbrak-88eb5',
    storageBucket: 'chatbrak-88eb5.appspot.com',
    iosBundleId: 'com.example.chatBrak',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBy_93NXkI5uaNuD-JcOSixtGK6aHiaC7I',
    appId: '1:664812122748:ios:f604bfaa84c9b718eccff9',
    messagingSenderId: '664812122748',
    projectId: 'chatbrak-88eb5',
    storageBucket: 'chatbrak-88eb5.appspot.com',
    iosBundleId: 'com.example.chatBrak.RunnerTests',
  );
}