import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:softmantissa_travel_emp/screens/ViewSideBar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);
  static String id = "ProfilePage";

  _ProfilePage createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SafeArea(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    height: 60,
                  ),
                  Column(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child:Padding(
                            padding: EdgeInsets.all(20),
                            child:Container(
                              padding: const EdgeInsets.all(20),
                              alignment: Alignment.center,
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black
                                ),
                              ),
                              child: Text(
                                'photo',
                                //textAlign: TextAlign.center,
                              ),
                            ),
                          )),],
                  ),


                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child:
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child:
                      Container(
                        alignment: Alignment.center,
                        width: 300,
                        height: 34,
                        decoration: BoxDecoration(
                            border:Border.all(
                                color: Colors.black
                            )
                        ),
                        child: Text
                          ('Name-fixed'
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child:
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child:
                      Container(
                        alignment: Alignment.center,
                        width: 300,
                        height: 34,
                        decoration: BoxDecoration(
                            border:Border.all(
                                color: Colors.black
                            )
                        ),
                        child: Text
                          ('+91 9513879960'
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child:
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child:
                      Container(
                        alignment: Alignment.center,
                        width: 300,
                        height: 34,
                        decoration: BoxDecoration(
                            border:Border.all(
                                color: Colors.black
                            )
                        ),
                        child: Text
                          ('Password'
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child:
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child:
                      Container(
                        alignment: Alignment.center,
                        width: 300,
                        height: 34,
                        decoration: BoxDecoration(
                            border:Border.all(
                                color: Colors.black
                            )
                        ),
                        child: Text
                          ('Verify Password'
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 500,
                    child:Align(
                      alignment: Alignment.topLeft,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.green),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                )
                            )
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(14),
                          child: Text('Change',
                              style: TextStyle(fontSize: 16)
                          ),
                        ),
                      ),
                    ),
                  )],

              ),
            )
        )
    );
  }
}