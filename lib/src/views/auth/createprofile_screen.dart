import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutterappui/src/utils/size_config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateProfileScreen extends StatefulWidget {
  @override
  _CreateProfileScreenState createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController usernameController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController meetingLocationController = TextEditingController();
  TextEditingController professionController = TextEditingController();
  TextEditingController ratePerHourController = TextEditingController();

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
          "Complete Profile".toUpperCase(),
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 18,
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
            Container(
                width: width * 0.32,
                height: width * 0.32,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.camera_alt_outlined,
                  size: 30,
                )),
            SizedBox(
              height: height * 0.03,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      //  alignLabelWithHint: true,
                      //  hintText: 'Name',
                      labelText: 'username',
                      hintStyle: TextStyle(color: Colors.black),
                    ),
                    onSaved: (String? value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    controller: usernameController,
                    validator: (value) {
                      if (value == "" && value!.isEmpty) {
                        return "Username is required";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        labelText: 'Location',
                        suffixIcon: Icon(Icons.my_location)),
                    onSaved: (String? value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    controller: locationController,
                    validator: (value) {
                      if (value == "" && value!.isEmpty) {
                        return "Location is required";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  TextFormField(
                    obscureText: isObsecure,
                    decoration: const InputDecoration(
                      labelText: 'Meeting Location',
                      suffixIcon: Icon(Icons.my_location),
                    ),
                    onSaved: (String? value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    controller: meetingLocationController,
                    validator: (value) {
                      if (value == "" && value!.isEmpty) {
                        return "Meeting Location is required";
                      }

                      return null;
                    },
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      //  hintText: 'Name',

                      labelText: 'Profession',
                    ),
                    onSaved: (String? value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    controller: professionController,
                    validator: (value) {
                      if (value == "" && value!.isEmpty) {
                        return "Profession is required";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      //  hintText: 'Name',

                      labelText: 'Rate per hours',
                    ),
                    onSaved: (String? value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    controller: professionController,
                    validator: (value) {
                      if (value == "" && value!.isEmpty) {
                        return "Rate per hours";
                      }
                      return null;
                    },
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
