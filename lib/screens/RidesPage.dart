import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:softmantissa_travel_emp/RowWidget.dart';
import 'package:softmantissa_travel_emp/screens/ViewSideBar.dart';


class RidesPage extends StatefulWidget {
  const RidesPage({Key? key}) : super(key: key);
  static String id = "RidesPage";

  _RidesPage createState() => _RidesPage();
}

class _RidesPage extends State<RidesPage>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SafeArea(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    RowWidget(
                      text1: "Date and time – 30-09-2021",
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
                          color: Colors.blue
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "STATUS : Active ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    RowWidget(
                      text1: "Date and time – 30-09-2021",
                      text2: "Pick up : 10:30 AM",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black
                                )
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Location : Marathalli",
                                    style: TextStyle(
                                        fontSize: 15
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                              height: 34,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,

                                  )
                                ],
                              )
                          ),
                        ),
                      ],
                    ),


                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black
                                )
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Employees:2",
                                    style: TextStyle(
                                        fontSize: 15
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                              height: 34,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,

                                  )
                                ],
                              )
                          ),
                        ),
                      ],
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
                    ),
                    RowWidget(
                      text1: "Date and time – 30-09-2021",
                      text2: "Pick up : 10:30 AM",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black
                                )
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Location : Marathalli",
                                    style: TextStyle(
                                        fontSize: 15
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                              height: 34,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,

                                  )
                                ],
                              )
                          ),
                        ),
                      ],
                    ),


                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black
                                )
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Employees:2",
                                    style: TextStyle(
                                        fontSize: 15
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                              height: 34,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,

                                  )
                                ],
                              )
                          ),
                        ),
                      ],
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
                  ]



              )

          ),
        )
    );

  }

}