import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lec1/utils/colors.dart';
import 'package:lec1/utils/space.dart';
import 'package:lec1/utils/strings.dart';

class RegistrationForm1 extends StatefulWidget {
  const RegistrationForm1({Key? key}) : super(key: key);

  @override
  State<RegistrationForm1> createState() => _RegistrationState();
}

class _RegistrationState extends State<RegistrationForm1> {
  bool password = false;
  bool state = true;

  String? userNameError;
  String? emailIdError;

  /// Form with Validation
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();

  /// Radio
  String male = 'Male';
  String female = 'Female';
  String other = 'Other';

  String gender = 'Male';

  /// CheckBox
  bool cricket = false;
  bool volleyball = false;
  bool reading = false;

  TextEditingController dateInput = TextEditingController();
  TextEditingController timeInput = TextEditingController();

  final ImagePicker _picker = ImagePicker();
  File? file;

  getImage() async{
    final XFile? photo = await _picker.pickImage(source:ImageSource.camera);

    file= File(photo!.path);
    setState(() {});
  }

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
            end: Alignment.bottomLeft,
          ),
        ),

        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  VerticalSpace(50),
                  GestureDetector(
                    onTap: (){
                      getImage();
                    },
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white,
                      backgroundImage: file==null? NetworkImage('https://yt3.ggpht.com/ytc/AMLnZu89ysS9G7giLMo1jVukCqUyHpKvOEeOemhuX4klkQ=s900-c-k-c0x00ffffff-no-rj')
                          : FileImage(file!) as ImageProvider,

                    ),
                  ),
                  VerticalSpace(20.0),

                  Text(
                    textRegistrationForm,
                    style: TextStyle(
                      color: white,
                    ),
                  ),
                  VerticalSpace(20.0),

                  TextFormField(
                    validator: (value) {
                      return (value!.isEmpty) ? 'Please Enter User Name' : null;
                    },

                    // onChanged: (value) {
                    //   if (value.isEmpty) {
                    //     error = 'Please Enter User Name';
                    //     setState(() {});
                    //   } else {
                    //     error = null;
                    //     setState(() {});
                    //   }
                    // },
                    cursorColor: white,
                    style: TextStyle(color: white),
                    decoration: InputDecoration(
                        hintText: textUserName,
                        labelText: textUserName,
                        // errorText: userNameError,
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
                        )),
                  ),
                  VerticalSpace(20.0),

                  TextFormField(
                    controller: emailController,
                    validator: (value) {
                      bool emailValid = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(emailController.text);

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
                      // errorText: emailIdError,
                      hintText: textEmailId,
                      labelText: textEmailId,
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
                            password = !password;
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
                  TextField(
                    controller: dateInput,
                    decoration: InputDecoration(
                      hintText: 'Select date',
                      labelText: 'Date',
                      suffixIcon: IconButton(onPressed: () async {
                        DateTime? date = await showDatePicker(context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2023),
                        );
                        setState(() {
                        dateInput.text = '${date!.day} / ${date.month} / ${date.year}';
                        });
                      }, icon: Icon(Icons.calendar_month),),
                    ),

                  ),
                  VerticalSpace(20.0),
                  // TextField(
                  //   decoration: InputDecoration(
                  //     hintText: 'Select Time',
                  //     labelText: 'Time',
                  //     suffixIcon: IconButton(onPres
                  //     sed: () async {
                  //
                  //     }
                  //       ),
                  //   ),
                  // ),
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
                        ),
                      ),
                    ],
                  ),
                  VerticalSpace(20.0),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Hobby',
                          style: TextStyle(
                            color: white,
                            fontSize: 20.0,
                          ),
                        ),
                        Checkbox(
                          checkColor: blue900,
                          activeColor: white,
                          value: cricket,
                          onChanged: (value) {
                            setState(() {
                              cricket = value!;
                            });
                          },
                        ),
                        Text(
                          'Cricket',
                          style: TextStyle(
                            color: white,
                          ),
                        ),
                        Checkbox(
                          checkColor: blue900,
                          activeColor: white,
                          value: volleyball,
                          onChanged: (value) {
                            setState(() {
                              volleyball = value!;
                            });
                          },
                        ),
                        Text(
                          'Volleyball',
                          style: TextStyle(
                            color: white,
                          ),
                        ),
                        Checkbox(
                          checkColor: blue900,
                          activeColor: white,
                          value: volleyball,
                          onChanged: (value) {
                            setState(() {
                              volleyball = value!;
                            });
                          },
                        ),
                        Text(
                          'Volleyball',
                          style: TextStyle(
                            color: white,
                          ),
                        ),
                        Checkbox(
                          checkColor: blue900,
                          activeColor: white,
                          value: volleyball,
                          onChanged: (value) {
                            setState(() {
                              volleyball = value!;
                            });
                          },
                        ),
                        Text(
                          'Volleyball',
                          style: TextStyle(
                            color: white,
                          ),
                        ),
                        Checkbox(
                          checkColor: blue900,
                          activeColor: white,
                          value: reading,
                          onChanged: (value) {
                            setState(() {
                              reading = value!;
                            });
                          },
                        ),
                        Text(
                          'Reading',
                          style: TextStyle(
                            color: white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  VerticalSpace(20.0),
                  Center(
                    child: MaterialButton(
                      onPressed: () {
                        formKey.currentState!.validate();
                      },
                      color: Colors.yellow.shade800,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                          color: white,
                        ),
                      ),
                    ),
                  ),
                  Switch(value: state,
                    onChanged: (bool s) {
                      setState(() {
                        state = s;
                        print(state);
                      });
                    },
                    activeColor: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
