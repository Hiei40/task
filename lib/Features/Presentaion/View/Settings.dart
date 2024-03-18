import 'package:flutter/material.dart';
import 'package:task/core/utils/color%20Manger.dart';
import 'package:task/core/utils/publicWidgets/CustomText.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Icon(Icons.person),
                SizedBox(width: 10), // Add space between icon and text
                CustomText(text: "Profile"), // Use CustomText widget
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: ColorManger.WhiteG,
                borderRadius: BorderRadius.all(Radius.circular(10.0)), // Use Radius.circular for borderRadius
              ),
              width: 400,
              height: 100,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Row(
                  children: [
                    InkWell(child: Text(" Edit Profile"),),
                  ],
                ),
                Row(
                  children: [
                    InkWell(child: Text(" Edit Profile"),),
                  ],
                ),
                Row(
                  children: [
                    InkWell(child: Text(" Edit Profile"),),
                  ],
                )
              ],),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Icon(Icons.notifications),
                SizedBox(width: 10), // Add space between icon and text
                CustomText(text: "notifications"), // Use CustomText widget
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: ColorManger.WhiteG,
                borderRadius: BorderRadius.all(Radius.circular(10.0)), // Use Radius.circular for borderRadius
              ),
              width: 400,
              height: 100,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      InkWell(child: Text(" Edit Profile"),),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(child: Text(" Edit Profile"),),
                    ],
                  ),

                ],),
            ),
          ),
        ],
      ),
    );
  }
}
