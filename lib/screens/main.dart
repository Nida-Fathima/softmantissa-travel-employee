import 'package:flutter/material.dart';
import 'package:softmantissa_travel_emp/screens/OTPLogin.dart';
import 'package:softmantissa_travel_emp/screens/ProfilePage.dart';
import 'package:softmantissa_travel_emp/screens/RidesPage.dart';
import 'package:softmantissa_travel_emp/screens/ViewSideBar.dart';
import 'package:softmantissa_travel_emp/screens/WelcomePage.dart';

import 'PhoneLogin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        PhoneLogin.id:(context)=>PhoneLogin(),
        OTPLogin.id:(context)=>OTPLogin(),
        WelcomePageLogin.id:(context)=>WelcomePageLogin(),
        ViewSidebar.id:(context)=>ViewSidebar(),
        RidesPage.id:(context)=>RidesPage(),
        ProfilePage.id:(context)=>ProfilePage(),
      },
      initialRoute: PhoneLogin.id,
    );
  }
}


