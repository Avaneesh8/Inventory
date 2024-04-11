import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyADq5IvSGQJaRKHgZ9nEh9yq5b3CcSbKYM",
            authDomain: "sukhadafootwear.firebaseapp.com",
            projectId: "sukhadafootwear",
            storageBucket: "sukhadafootwear.appspot.com",
            messagingSenderId: "915225761787",
            appId: "1:915225761787:web:bdc8cf28ebc679f44edd5e",
            measurementId: "G-HRXVS34EBH"));
  } else {
    await Firebase.initializeApp();
  }
}
