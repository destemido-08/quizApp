import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAKR3eBH9wXE7TqP1UuKSaLYKN8AwO3w6Y",
            authDomain: "quiz-app-81661.firebaseapp.com",
            projectId: "quiz-app-81661",
            storageBucket: "quiz-app-81661.appspot.com",
            messagingSenderId: "37683140575",
            appId: "1:37683140575:web:4f1467ff87a81760c9566a"));
  } else {
    await Firebase.initializeApp();
  }
}
