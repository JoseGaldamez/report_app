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
    apiKey: 'AIzaSyA7QDi5Q4x1ruS23C3sSwBUCAIYOqcxAqM',
    appId: '1:941529503016:web:258c9175a33a3579aaac1d',
    messagingSenderId: '941529503016',
    projectId: 'uploads-flutter',
    authDomain: 'uploads-flutter.firebaseapp.com',
    storageBucket: 'uploads-flutter.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyACWy79pzhjyDBVpKNVa8G4LVoTiEDGcds',
    appId: '1:941529503016:android:563c6566e34b697faaac1d',
    messagingSenderId: '941529503016',
    projectId: 'uploads-flutter',
    storageBucket: 'uploads-flutter.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAqrSz-vsRmWWhBfBdp7TszQM85W5Ru5X0',
    appId: '1:941529503016:ios:df6ad98a612570c8aaac1d',
    messagingSenderId: '941529503016',
    projectId: 'uploads-flutter',
    storageBucket: 'uploads-flutter.appspot.com',
    iosClientId: '941529503016-9qqje53gdqefk1pqikkbqu9j34c0vkts.apps.googleusercontent.com',
    iosBundleId: 'dev.josegaldamez.reportes',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAqrSz-vsRmWWhBfBdp7TszQM85W5Ru5X0',
    appId: '1:941529503016:ios:df6ad98a612570c8aaac1d',
    messagingSenderId: '941529503016',
    projectId: 'uploads-flutter',
    storageBucket: 'uploads-flutter.appspot.com',
    iosClientId: '941529503016-9qqje53gdqefk1pqikkbqu9j34c0vkts.apps.googleusercontent.com',
    iosBundleId: 'dev.josegaldamez.reportes',
  );
}
