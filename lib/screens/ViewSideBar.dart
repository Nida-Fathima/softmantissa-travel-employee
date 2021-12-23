import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:softmantissa_travel_emp/screens/ProfilePage.dart';
import 'package:softmantissa_travel_emp/screens/RidesPage.dart';

class ViewSidebar extends StatefulWidget {
  const ViewSidebar({Key? key}) : super(key: key);
  static String id="ViewSidebar";
  _ViewSidebar createState() => _ViewSidebar();
}

class _ViewSidebar extends State<ViewSidebar> {
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
                      height: 50,
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 30.0),
                        alignment: Alignment.centerLeft,
                        child:Text('Side menu-',
                        )
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 30.0),
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context)=>RidesPage()));
                        },
                        style: TextButton.styleFrom(
                          primary: Colors.black,
                        ),
                        child:  Text('1.    My Rides',),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 30.0),
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context)=>ProfilePage()));
                          },
                          style: TextButton.styleFrom(
                            primary: Colors.black,
                          ),
                          child: Text('2.     Edit Profile'),
                        )
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 30.0),
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                          onPressed: (){},
                          style: TextButton.styleFrom(
                            primary: Colors.black,
                          ),
                          child: Text('3.     Logout'),

                        )

                    )



                  ]
              )
          ),
        ));
  }
}
