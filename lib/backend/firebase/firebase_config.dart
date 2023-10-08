import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDhj6KmoPw9dU-a2Tmk-paZOALy0mdMV84",
            authDomain: "testbook-a11f8.firebaseapp.com",
            projectId: "testbook-a11f8",
            storageBucket: "testbook-a11f8.appspot.com",
            messagingSenderId: "418202309930",
            appId: "1:418202309930:web:85612e2ee964c09ee43a53"));
  } else {
    await Firebase.initializeApp();
  }
}
