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
    apiKey: 'AIzaSyACZUlATghXIdUg2CUQwK6Rk99rbpvTXZ0',
    appId: '1:7861739186:web:93aab36bec442f1aba33ab',
    messagingSenderId: '7861739186',
    projectId: 'my-application-40c8e',
    authDomain: 'my-application-40c8e.firebaseapp.com',
    databaseURL: 'https://my-application-40c8e-default-rtdb.firebaseio.com',
    storageBucket: 'my-application-40c8e.appspot.com',
    measurementId: 'G-CP8079WXP9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDqdQPfoLvhbeS-L9KnNfE92fWxEaN5dsE',
    appId: '1:7861739186:android:29a31a8c16ec8cd6ba33ab',
    messagingSenderId: '7861739186',
    projectId: 'my-application-40c8e',
    databaseURL: 'https://my-application-40c8e-default-rtdb.firebaseio.com',
    storageBucket: 'my-application-40c8e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAxqO6viBQad9fvRZwyN_UFDSRlr-6bbhU',
    appId: '1:7861739186:ios:535d27a2b213521eba33ab',
    messagingSenderId: '7861739186',
    projectId: 'my-application-40c8e',
    databaseURL: 'https://my-application-40c8e-default-rtdb.firebaseio.com',
    storageBucket: 'my-application-40c8e.appspot.com',
    iosBundleId: 'com.example.onlineShope',
  );
}
