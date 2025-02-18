import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB_v5W1OKaldgPAm7yQBXY1cjDzsPZ9fb8",
            authDomain: "physi-coach-drwjme.firebaseapp.com",
            projectId: "physi-coach-drwjme",
            storageBucket: "physi-coach-drwjme.firebasestorage.app",
            messagingSenderId: "646632930899",
            appId: "1:646632930899:web:f8022aae7afa363fadd0a6"));
  } else {
    await Firebase.initializeApp();
  }
}
