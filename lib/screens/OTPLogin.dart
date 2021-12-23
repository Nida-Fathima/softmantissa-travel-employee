import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:softmantissa_travel_emp/screens/WelcomePage.dart';

class OTPLogin extends StatefulWidget{
  const OTPLogin({Key? key}) : super(key:key);
  static String id="OTPLogin";

  _OTPLogin createState()=>_OTPLogin();

}

class _OTPLogin extends State<OTPLogin> {
  TextEditingController OTPController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(
                  height: 150,
                ),
                Container(
                  alignment:Alignment.centerLeft,
                  child:Image.asset('assets/travel logo.jpeg',
                    width: 90, height: 90,),
                ),
                SizedBox(
                  height: 20,),
                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _textFieldOTP(first: true,last:false),
                    _textFieldOTP(first: false,last:false),
                    _textFieldOTP(first: false,last:false),
                    _textFieldOTP(first: false,last:true),
                  ],
                ),


                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context)=>WelcomePageLogin())
                      );
                    },
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
                      child: Text('Submit',
                          style: TextStyle(fontSize: 16)
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 170,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context)=>OTPLogin())
                        );
                      },
                      style:ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          shape:MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              )
                          )
                      ),
                      child:Padding(
                        padding: EdgeInsets.all(10),
                        child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Forgot Password',
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                    width: 0.0,
                                  ),
                                )
                            )

                        ),
                      )
                  ),
                ),

              ],
            ),
          ),
        )
    );

  }
  _textFieldOTP({required bool first,last}){
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        height: 85,
        child:AspectRatio(
          aspectRatio: 1.2,
          child: TextField(
            autofocus: true,
            onChanged: (value){
              if(value.length==1 && last==false){
                FocusScope.of(context).nextFocus();
              }
              if(value.length==0 && first==false){
                FocusScope.of(context).previousFocus();
              }
            },
            showCursor: false,
            readOnly:false ,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),
            keyboardType: TextInputType.number,
            maxLength: 1,
            decoration: InputDecoration(
              counter: Offstage(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 2,
                    color: Colors.blue),
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 2,
                    color: Colors.blue),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        )
    );
  }








}