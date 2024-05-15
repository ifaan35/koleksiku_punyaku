import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyDGTrfJyA4wzGdEi7buR3JnDb6KWL-paz8",
      appId: "1:175801569577:android:66fa207764abb6e8ffe738",
      messagingSenderId: "175801569577",
      projectId: "koleksiku-punyaku",
      storageBucket: "gs://koleksiku-punyaku.appspot.com",
    ),
  );
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
