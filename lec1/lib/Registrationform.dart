

import 'package:flutter/material.dart';
import 'package:lec1/utils/colors.dart';
import 'package:lec1/utils/space.dart';
import 'package:lec1/utils/strings.dart';

class Registrationform extends StatefulWidget {
  const Registrationform({Key? key}) : super(key: key);

  @override
  State<Registrationform> createState() => _RegistrationformState();
}

class _RegistrationformState extends State<Registrationform> {
  bool password = false;

  String ? UserNameError;
  String ? emailIdError;

  //GlobalKey<Formstate> formkey = Globalkey<FormState>();

  TextEditingController emailcontroller = TextEditingController();

  ///Radio
  String male = 'Male';
  String female = 'Female';
  String other = 'Other';

  String gender = 'Male';

  ///Checkox
  bool cricket = false;
  bool volleyball = false;
  bool reading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              blue900,
            blue200,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
          ),
        ),
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VerticalSpace(100),
                Text(
                    textRegistrationForm,
                  style: TextStyle(
                    color: white,
                  ),
                ),
                VerticalSpace(20.0),
                TextFormField(
                  validator: (value){
                    return(value!.isEmpty)?'Please Enter UserName':null;
                  },
                  cursorColor: white,
                  style: TextStyle(color: white),
                  decoration: InputDecoration(
                    hintText: textUserName,
                    labelText: textUserName,
                    labelStyle: TextStyle(color: white),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: white),
                    ),
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: white),
                    ),
                    filled: true,
                    fillColor: blue900,
                    prefixIcon: Icon(
                      Icons.person,
                      color: white,
                    ),
                  ),
                ),
                VerticalSpace(20.0),
               TextFormField(
                  controller: emailcontroller,
                  validator: (value) {
                    bool emailValid = RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(emailcontroller.text);

                    return (value!.isEmpty)
                        ? 'Please Enter Email'
                        : (!emailValid)
                        ? 'Please Enter Valid Email'
                        : null;
                  },
                 cursorColor: white,
                 style: TextStyle(color: white),
                 keyboardType: TextInputType.emailAddress,
                 decoration: InputDecoration(
                   hintText: textEmailId,
                   labelText: textEmailId,
                   labelStyle: TextStyle(color: white),
                   focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10.0),
                     borderSide: BorderSide(color: white),
                   ),
                   filled: true,
                   fillColor: blue900,
                   prefixIcon: Icon(
                     Icons.email_outlined,
                     color: white,
                   ),
                 ),
                ),
                VerticalSpace(20.0),
                TextFormField(
                  cursorColor: white,
                  style: TextStyle(color: white),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: textPassword,
                    labelText: textPassword,
                    labelStyle: TextStyle(color: white),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: white),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: white),
                    ),
                    filled: true,
                    fillColor: blue900,
                    prefixIcon: Icon(
                      Icons.lock,
                      color: white,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          password=!password;
                        });
                      },
                      icon: Icon(
                        password ? Icons.visibility_off : Icons.visibility,
                        color: white,
                      ),
                    ),
                  ),
                   obscureText: password,
                ),
                VerticalSpace(20.0),
                Row(
                  children: [
                    Text(
                      'Gender',
                      style: TextStyle(
                        color: white,
                        fontSize: 20.0,
                      ),
                    ),
                    Radio(
                      activeColor: white,
                      value: male,
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    ),

                    Text(
                      male,
                      style: TextStyle(
                        color: white,
                        fontSize: 20.0,
                      ),
                    ),
                    Radio(
                      activeColor: white,
                      value: female,
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    ),
                    Text(
                      female,
                      style: TextStyle(
                        color: white,
                        fontSize: 20.0,
                      ),
                    ),

                    Radio(
                      activeColor: white,
                      value: other,
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    ),

                    Text(
                      other,
                      style: TextStyle(
                        color: white,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
