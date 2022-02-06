import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterappui/src/utils/size_config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SelectDayandTime extends StatefulWidget {
  @override
  _SelectDayandTimeState createState() => _SelectDayandTimeState();
}

class _SelectDayandTimeState extends State<SelectDayandTime> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController daysController = TextEditingController();
  TextEditingController startTimeController = TextEditingController();
  TextEditingController endTimeController = TextEditingController();
  TextEditingController breakStartTimeController = TextEditingController();
  TextEditingController breakEndController = TextEditingController();

  bool isObsecure = true;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var height = SizeConfig.screenHeight;
    var width = SizeConfig.screenWidth;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
        ),
        title: Text(
          "Select day & time".toUpperCase(),
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 16,
              letterSpacing: 1.1),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: width! * 0.05),
        child: ListView(
          children: [
            SizedBox(
              height: height! * 0.04,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Select Days",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextFormField(
                        decoration: const InputDecoration(
                            //  alignLabelWithHint: true,
                            //  hintText: 'Name',
                            labelText: 'Select',
                            hintStyle: TextStyle(color: Colors.black),
                            suffixIcon: Icon(Icons.calendar_today_outlined)),
                        onSaved: (String? value) {
                          // This optional block of code can be used to run
                          // code when the user saves the form.
                        },
                        controller: daysController,
                        validator: (value) {
                          if (value == "" && value!.isEmpty) {
                            return "Days are required";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.06,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Define The Timing",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: width,
                        child: Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                    labelText: 'Start Time',
                                    suffixIcon: Icon(Icons.timelapse)),
                                onSaved: (String? value) {
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                controller: startTimeController,
                                validator: (value) {
                                  if (value == "" && value!.isEmpty) {
                                    return "Start Time is required";
                                  }
                                  return null;
                                },
                              ),
                            ),
                            SizedBox(
                              width: width * 0.1,
                            ),
                            Expanded(
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                    labelText: 'End Time',
                                    suffixIcon: Icon(Icons.timelapse)),
                                onSaved: (String? value) {
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                controller: endTimeController,
                                validator: (value) {
                                  if (value == "" && value!.isEmpty) {
                                    return "End Time is required";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.06,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Define The Break Timing",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: width,
                        child: Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                    labelText: 'Start Time',
                                    suffixIcon: Icon(Icons.timelapse)),
                                onSaved: (String? value) {
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                controller: breakStartTimeController,
                                validator: (value) {
                                  if (value == "" && value!.isEmpty) {
                                    return "Start Time is required";
                                  }
                                  return null;
                                },
                              ),
                            ),
                            SizedBox(
                              width: width * 0.1,
                            ),
                            Expanded(
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                    labelText: 'End Time',
                                    suffixIcon: Icon(Icons.timelapse)),
                                onSaved: (String? value) {
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                controller: breakEndController,
                                validator: (value) {
                                  if (value == "" && value!.isEmpty) {
                                    return "End Time is required";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.06,
            ),
            GestureDetector(
              onTap: () {
                if (_formKey.currentState!.validate()) {}
                // Navigator.pushNamed(context, ScreenRoute.signupScreenRoute);
              },
              child: Container(
                width: width,
                padding:
                    const EdgeInsets.symmetric(vertical: 19, horizontal: 0),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Color(0xFF149dff), Color(0xFF0066ff)]),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "next".toUpperCase(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                      fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
