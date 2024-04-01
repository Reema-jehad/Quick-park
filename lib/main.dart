import 'package:flutter/material.dart';
// import 'package:quick_park/ui/parkingPage.dart';

import 'ui/first.dart';
import 'ui/login.dart';
import 'ui/signup.dart';
import 'ui/password_recovery.dart';
import 'ui/otp.dart';
import 'ui/resetPage.dart';
import 'ui/success.dart';
// import 'ui/home.dart';
import 'ui/Parking.dart';
import 'ui/chatbot.dart';
import 'ui/chatbot1.dart';
import 'ui/map_page.dart';
import 'ui/form.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/Parking",
    routes: {
      "/": (context) => const first(),
      "/login": (context) => const login(),
      "/signup": (context) => const signup(),
      "/password_recovery": (context) => const Password_recovery(),
      "/otp": (context) => const Otp(),
      "/resetPage": (context) => const reset(),
      "/success": (context) => const Success(),
      // "/ProfilePage": (context) => ProfilePage(),
      "/Parking": (context) => const Parking(),
      "/chatbot": (context) => const Chatbot(),
      "/chatbot1": (context) => const Chatbot1(),
      "/form": (context) => const form(),
      "/map_page": (context) => const MapPage(),
    },
  ));
}
