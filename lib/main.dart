import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/responsive/mobile_screen_layout.dart';
import 'package:insta_clone/responsive/responsive_layout_screen.dart';
import 'package:insta_clone/responsive/web_SL.dart';
import 'package:insta_clone/screen/login_screen.dart';
import 'package:insta_clone/screen/signup_screen.dart';
import 'package:insta_clone/utils/colors.dart';

void main() async {
  //ensure widgets are loaded before calling firebase
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBPbF8FALFH5dEEAAgT_m90RqTlw-do6CE",
            appId: "1:578476749569:web:2a0fa29d22b973c399e100",
            messagingSenderId: "578476749569",
            projectId: "instagram-clone-91150",
            storageBucket: "instagram-clone-91150.appspot.com"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Insta Clone',
        theme: ThemeData.dark().copyWith(
            //keeps all the data of dark theme and overwrite it
            scaffoldBackgroundColor: mobileBackgroundColor),
        home: SignupScreen()
        // const ResponsiveLayout(
        //   mobileScreenLayout: MobileScreenLayout(),
        //   webScreenlayout: WebScreenlayout(),
        // ));
        );
  }
}
