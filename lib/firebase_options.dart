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
    apiKey: 'AIzaSyD1C9xUwgYKZSUbILHHairbJOJ6f4BtocY',
    appId: '1:874529082848:web:31fcd24c616e56cad02f85',
    messagingSenderId: '874529082848',
    projectId: 'untitled5-bd768',
    authDomain: 'untitled5-bd768.firebaseapp.com',
    storageBucket: 'untitled5-bd768.appspot.com',
    measurementId: 'G-2Y4K7Z9NL7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyArRGuLJWBq12s3Og8T2p38AYN0DLaXjl0',
    appId: '1:874529082848:android:275d29f55f30e683d02f85',
    messagingSenderId: '874529082848',
    projectId: 'untitled5-bd768',
    storageBucket: 'untitled5-bd768.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBmRmttwneCJWXdidgRkHsV5F1hM0uPXeI',
    appId: '1:874529082848:ios:2d0e600da2a5172bd02f85',
    messagingSenderId: '874529082848',
    projectId: 'untitled5-bd768',
    storageBucket: 'untitled5-bd768.appspot.com',
    iosClientId: '874529082848-ss4ua7sut12cqrqpjesv4riqcjc13of1.apps.googleusercontent.com',
    iosBundleId: 'com.example.untitled5',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBmRmttwneCJWXdidgRkHsV5F1hM0uPXeI',
    appId: '1:874529082848:ios:2d0e600da2a5172bd02f85',
    messagingSenderId: '874529082848',
    projectId: 'untitled5-bd768',
    storageBucket: 'untitled5-bd768.appspot.com',
    iosClientId: '874529082848-ss4ua7sut12cqrqpjesv4riqcjc13of1.apps.googleusercontent.com',
    iosBundleId: 'com.example.untitled5',
  );
}