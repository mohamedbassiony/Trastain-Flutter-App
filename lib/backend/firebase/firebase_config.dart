import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDVE5lKFvAWvkkdHRmZ_peGxKJCSAVL11I",
            authDomain: "trastain-1cec1.firebaseapp.com",
            projectId: "trastain-1cec1",
            storageBucket: "trastain-1cec1.appspot.com",
            messagingSenderId: "721733569071",
            appId: "1:721733569071:web:6d4c06894471b97997d4da",
            measurementId: "G-X954RM4G1N"));
  } else {
    await Firebase.initializeApp();
  }
}
