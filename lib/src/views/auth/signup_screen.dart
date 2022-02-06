import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterappui/src/utils/size_config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:email_validator/email_validator.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

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
            "create account".toUpperCase(),
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 18,
                letterSpacing: 1.1),
          ),
        ),
        body: Stack(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: width! * 0.05),
              child: ListView(
                children: [
                  SizedBox(
                    height: height! * 0.08,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            //  alignLabelWithHint: true,
                            //  hintText: 'Name',
                            labelText: 'Name',
                            hintStyle: TextStyle(color: Colors.black),
                            prefixIcon: Icon(Icons.person),
                          ),
                          onSaved: (String? value) {
                            // This optional block of code can be used to run
                            // code when the user saves the form.
                          },
                          controller: nameController,
                          validator: (value) {
                            if (value == "" && value!.isEmpty) {
                              return "Name is required";
                            }
                          },
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                              labelText: 'Email',
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: Icon(Icons.visibility_off)),
                          onSaved: (String? value) {
                            // This optional block of code can be used to run
                            // code when the user saves the form.
                          },
                          controller: emailController,
                          validator: (value) {
                            if (value == "" && value!.isEmpty) {
                              return "Email is required";
                            } else if (!EmailValidator.validate(value!)) {
                              return "Please enter a valid email";
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
                            //  hintText: 'Name',

                            labelText: 'Password',
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: Icon(Icons.visibility_off),
                          ),
                          onSaved: (String? value) {
                            // This optional block of code can be used to run
                            // code when the user saves the form.
                          },
                          controller: passwordController,
                          validator: (value) {
                            if (value == "" && value!.isEmpty) {
                              return "Password is required";
                            }
                            if (value!.length < 8) {
                              return "Minimun 8 characters needed";
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
                            //  hintText: 'Name',

                            labelText: 'Confirm Password',
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: Icon(Icons.visibility_off),
                          ),
                          onSaved: (String? value) {
                            // This optional block of code can be used to run
                            // code when the user saves the form.
                          },
                          controller: confirmPasswordController,
                          validator: (value) {
                            if (value == "" && value!.isEmpty) {
                              return "Confirm Password is required";
                            } else if (value!.length <= 8) {
                              return "Minimun 8 characters needed";
                            } else if (value != passwordController.text) {
                              return "password and confirm password not matching";
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {}
                      // Navigator.pushNamed(context, ScreenRoute.signupScreenRoute);
                    },
                    child: Container(
                      width: width,
                      padding: const EdgeInsets.symmetric(
                          vertical: 19, horizontal: 0),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [Color(0xFF149dff), Color(0xFF0066ff)]),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Signup".toUpperCase(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                            fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  const Text(
                    "Or signup with",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  SizedBox(
                    width: width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.grey.withOpacity(0.3),
                                  width: 2)),
                          child: const Icon(FontAwesomeIcons.facebookF,
                              color: Color(0xFF39579a), size: 30),
                        ),
                        Container(
                          padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.grey.withOpacity(0.3),
                                  width: 2)),
                          child: const Icon(FontAwesomeIcons.google,
                              color: Color(0xFFd94f3d), size: 30),
                        ),
                        Container(
                          padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.grey.withOpacity(0.3),
                                  width: 2)),
                          child: const Icon(FontAwesomeIcons.apple,
                              color: Colors.black, size: 30),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: height * 0.04),
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "login".toUpperCase(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color(0xFF006fcd),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
