import 'package:flutter/material.dart';
import 'package:flutterappui/src/utils/size_config.dart';

class SelectCategoryScreen extends StatefulWidget {
  @override
  _SelectCategoryScreenState createState() => _SelectCategoryScreenState();
}

class _SelectCategoryScreenState extends State<SelectCategoryScreen> {
  List<String> categoryList = [
    "Category 1",
    "Category 2",
    "Category 3",
    "Category 4",
    "Category 5",
    "Category 6",
    "Category 7",
    "Category 8",
    "Category 9",
    "Category 10",
    "Category 11",
    "Category 12",
    "Category 13",
    "Category 14",
  ];
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
          "Categories".toUpperCase(),
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
            const Text(
              "Choose Categories",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18,
                  letterSpacing: 1),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              padding: const EdgeInsets.all(8.0),
              childAspectRatio: 8.0 / 3.3,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              children: categoryList.map(
                (item) {
                  return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        // border: Border.all(color: Colors.grey)
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(0, 0),
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 1,
                              spreadRadius: 1)
                        ]),
                    child: Center(
                      child: Text(item),
                    ),
                  );
                },
              ).toList(),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            GestureDetector(
              onTap: () {
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
            SizedBox(
              height: height * 0.04,
            ),
          ],
        ),
      ),
    );
  }
}
