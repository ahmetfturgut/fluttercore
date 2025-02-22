// // File generated by FlutterFire CLI.
// // ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
//  import 'package:flutter/foundation.dart'
//     show defaultTargetPlatform, kIsWeb, TargetPlatform;
//
// /// Default [FirebaseOptions] for use with your Firebase apps.
// ///
// /// Example:
// /// ```dart
// /// import 'firebase_options.dart';
// /// // ...
// /// await Firebase.initializeApp(
// ///   options: DefaultFirebaseOptions.currentPlatform,
// /// );
// /// ```
// class DefaultFirebaseOptions {
//   static FirebaseOptions get currentPlatform {
//     if (kIsWeb) {
//       return web;
//     }
//     switch (defaultTargetPlatform) {
//       case TargetPlatform.android:
//         return android;
//       case TargetPlatform.iOS:
//         return ios;
//       case TargetPlatform.macOS:
//         return macos;
//       case TargetPlatform.windows:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions have not been configured for windows - '
//           'you can reconfigure this by running the FlutterFire CLI again.',
//         );
//       case TargetPlatform.linux:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions have not been configured for linux - '
//           'you can reconfigure this by running the FlutterFire CLI again.',
//         );
//       default:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions are not supported for this platform.',
//         );
//     }
//   }
//
//   static const FirebaseOptions web = FirebaseOptions(
//     apiKey: 'AIzaSyCPwU_rwF6y0GWqLHJjxdcxre3_L3YFoRk',
//     appId: '1:682515844191:web:7276d1bc1a88a5f8b05fea',
//     messagingSenderId: '682515844191',
//     projectId: 'blogappprod',
//     authDomain: 'blogappprod.firebaseapp.com',
//     storageBucket: 'blogappprod.appspot.com',
//     measurementId: 'G-4XQ0K8Y083',
//   );
//
//   static const FirebaseOptions android = FirebaseOptions(
//     apiKey: 'AIzaSyDlJ7V8RauSTpnuaRkEgEFFw1NU84pfFuQ',
//     appId: '1:682515844191:android:7012520c2d913cbfb05fea',
//     messagingSenderId: '682515844191',
//     projectId: 'blogappprod',
//     storageBucket: 'blogappprod.appspot.com',
//   );
//
//   static const FirebaseOptions ios = FirebaseOptions(
//     apiKey: 'AIzaSyAbKnJBydyGiaYx8Ri8Q1CT7NmNVVpND5Y',
//     appId: '1:682515844191:ios:e83d05ac7076d674b05fea',
//     messagingSenderId: '682515844191',
//     projectId: 'blogappprod',
//     storageBucket: 'blogappprod.appspot.com',
//     iosClientId: '682515844191-dnh0qnc53mjaire8fmtsshkuodh2e55d.apps.googleusercontent.com',
//     iosBundleId: 'com.example.blogAppMobile',
//   );
//
//   static const FirebaseOptions macos = FirebaseOptions(
//     apiKey: 'AIzaSyAbKnJBydyGiaYx8Ri8Q1CT7NmNVVpND5Y',
//     appId: '1:682515844191:ios:e83d05ac7076d674b05fea',
//     messagingSenderId: '682515844191',
//     projectId: 'blogappprod',
//     storageBucket: 'blogappprod.appspot.com',
//     iosClientId: '682515844191-dnh0qnc53mjaire8fmtsshkuodh2e55d.apps.googleusercontent.com',
//     iosBundleId: 'com.example.blogAppMobile',
//   );
// }
