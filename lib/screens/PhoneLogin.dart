import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:softmantissa_travel_emp/screens/OTPLogin.dart';

class PhoneLogin extends StatefulWidget{
  //const PhoneLogin({key? key}) : super(key:key);
  static String id="PhoneLogin";

  _PhoneLogin createState()=>_PhoneLogin();

}

class _PhoneLogin extends State<PhoneLogin>
{
  TextEditingController phonenoController=TextEditingController();
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
                  alignment: Alignment.centerLeft,
                  child: Image.asset('assets/travel logo.jpeg',
                    width: 90,height: 90,),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: phonenoController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Phone number'
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context)=>OTPLogin())
                        );
                      },
                      style:ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                          shape:MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              )
                          )
                      ),
                      child:Padding(
                        padding: EdgeInsets.all(14),
                        child: Text('Get OTP',
                          style: TextStyle(fontSize: 16),),
                      )
                  ),
                ),

                SizedBox(
                  height: 190,
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context,
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
                        ),


                      ),
                      child:Padding(
                        padding: EdgeInsets.all(14),
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
                      ),
                    )
                ),

              ],
            ),
          ),
        ));

  }
}

