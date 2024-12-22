// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for android - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyA_n-S0BJrFHt1UpJlH3304xuuT0gDKG-A',
    appId: '1:973227881306:web:dbbb00aa28a68ae596b963',
    messagingSenderId: '973227881306',
    projectId: 'sofer-stam-4a6a1',
    authDomain: 'sofer-stam-4a6a1.firebaseapp.com',
    storageBucket: 'sofer-stam-4a6a1.firebasestorage.app',
    measurementId: 'G-MGRT9J3DL0',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyArE0lq3SGcfW0T71v2sCoMbNS7gEw74fE',
    appId: '1:973227881306:ios:d6b4c426a89a0eb696b963',
    messagingSenderId: '973227881306',
    projectId: 'sofer-stam-4a6a1',
    storageBucket: 'sofer-stam-4a6a1.firebasestorage.app',
    iosBundleId: 'com.example.myWebsite',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA_n-S0BJrFHt1UpJlH3304xuuT0gDKG-A',
    appId: '1:973227881306:web:a9eaf03a6e6f403c96b963',
    messagingSenderId: '973227881306',
    projectId: 'sofer-stam-4a6a1',
    authDomain: 'sofer-stam-4a6a1.firebaseapp.com',
    storageBucket: 'sofer-stam-4a6a1.firebasestorage.app',
    measurementId: 'G-EGP1GKL5GF',
  );
}
