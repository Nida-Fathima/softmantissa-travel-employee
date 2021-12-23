import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:softmantissa_travel_emp/RowWidget.dart';
import 'package:softmantissa_travel_emp/screens/ViewSideBar.dart';

class WelcomePageLogin extends StatefulWidget {
  const WelcomePageLogin({Key? key}) : super(key: key);
  static String id="WelcomePageLogin";
  _WelcomePageLogin createState() => _WelcomePageLogin();
}

class _WelcomePageLogin extends State<WelcomePageLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          icon: const Icon(Icons.view_sidebar),
                          color: Colors.blue,
                          onPressed: (){
                            Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context)=>ViewSidebar()));
                          },
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10.0),
                        alignment: Alignment.topLeft,
                        child: Image.asset(
                          'assets/travel logo.jpeg',
                          width: 70,
                          height: 70,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    child: Container(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Welcome-Santhosh Kumar',
                          fillColor: Colors.orangeAccent,
                          filled: true,
                        ),
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Expanded(
                    flex: 10,
                    child: Container(
                      height: 150,
                      width: double.infinity,
                      //padding: EdgeInsets.all(5),
                      child: Image.asset('assets/banner2.jpeg',fit: BoxFit.fill,),

                    ),),

                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'My Rides',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  RowWidget(
                    text1: "Date and time-30-09-2021'",
                    text2: "Pick up : 10:30 AM",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RowWidget(
                    text1: "Location : Marathalli",
                    text2: "On going",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RowWidget(
                    text1: "Employees : 2",
                    text2: "VIEW IN MAP",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.green
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "STATUS : Completed ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  )
                ],),

            )
        ));
  }
}
