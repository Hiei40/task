import 'package:flutter/material.dart';
import 'package:task/core/utils/publicWidgets/CustomText.dart';

import '../../../../../../core/utils/color Manger.dart';
import 'Widgets/TextForm.dart';

final formKey = GlobalKey<FormState>();

class Changepassword extends StatefulWidget {
  const Changepassword({Key? key}) : super(key: key);

  @override
  State<Changepassword> createState() => _ChangepasswordState();
}

class _ChangepasswordState extends State<Changepassword> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController PreviousPassword = TextEditingController();
  final TextEditingController NewPassword = TextEditingController();
  final TextEditingController NewPassword2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Add key to Scaffold
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu, color: ColorManger.Kblue),
          onPressed: () {
            // Add onPressed function for the menu button
          },
        ),
        centerTitle: true,
        title: Text(
          "change Password",
          style: TextStyle(
            color: Colors.black, // Add color to the title text
            fontSize: 20, // Add font size to the title text
            fontWeight: FontWeight.bold, // Add font weight to the title text
          ),
        ),
        actions: [
          Icon(Icons.notifications, color: ColorManger.Kblue),
        ],
      ),
      body: Form(
        key: formKey, // Add key to Form
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                    text:
                        "your new password must be diffrent From your previeous Password",
                    maxLines: 2,
                    fontWeight: FontWeight.w700,
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    CustomText(text: "Current Password"),
                  ],
                ),

                CustomTextform(
                  newPasswordController: NewPassword,

                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Password is required";
                    }
                    if (value.length < 8) {
                      return "Password must have 8 or more characters";
                    }
                    // Check for lowercase letter
                    if (!value.contains(RegExp(r'[a-z]'))) {
                      return "Password must contain at least one lowercase letter";
                    }
                    // Check for uppercase letter
                    if (!value.contains(RegExp(r'[A-Z]'))) {
                      return "Password must contain at least one uppercase letter";
                    }
                    // Check for number
                    if (!value.contains(RegExp(r'[0-9]'))) {
                      return "Password must contain at least one number";
                    }
                    // Check for special character
                    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                      return "Password must contain at least one special character";
                    }
                    return null;
                  },
                  label: '',
                  obscureText: true,
                  suffixIcon: null,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    CustomText(text: "Current Password"),
                  ],
                ),
                CustomTextform(
                  newPasswordController: PreviousPassword,

                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Password is required";
                    }
                    if (value.length < 8) {
                      return "Password must have 8 or more characters";
                    }
                    // Check for lowercase letter
                    if (!value.contains(RegExp(r'[a-z]'))) {
                      return "Password must contain at least one lowercase letter";
                    }
                    // Check for uppercase letter
                    if (!value.contains(RegExp(r'[A-Z]'))) {
                      return "Password must contain at least one uppercase letter";
                    }
                    // Check for number
                    if (!value.contains(RegExp(r'[0-9]'))) {
                      return "Password must contain at least one number";
                    }
                    // Check for special character
                    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                      return "Password must contain at least one special character";
                    }
                    if (value != NewPassword2.text) {
                      return "Passwords don't match";
                    }
                    return null;
                  },
                  label: '',
                  obscureText: true,
                  suffixIcon: null,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    CustomText(text: "Current Password"),
                  ],
                ),
                CustomTextform(
                  newPasswordController: NewPassword2,

                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Password is required";
                    }
                    if (value.length < 8) {
                      return "Password must have 8 or more characters";
                    }
                    // Check for lowercase letter
                    if (!value.contains(RegExp(r'[a-z]'))) {
                      return "Password must contain at least one lowercase letter";
                    }
                    // Check for uppercase letter
                    if (!value.contains(RegExp(r'[A-Z]'))) {
                      return "Password must contain at least one uppercase letter";
                    }
                    // Check for number
                    if (!value.contains(RegExp(r'[0-9]'))) {
                      return "Password must contain at least one number";
                    }
                    // Check for special character
                    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                      return "Password must contain at least one special character";
                    }
                    if (value != NewPassword.text) {
                      return "Passwords don't match";
                    }
                    return null;
                  },
                  label: '',
                  obscureText: true,
                  suffixIcon: null,
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    if (formKey.currentState!.validate()) {

                    }
                  },
                  child: Container(
                    height: 30,
                    width: 70,
                    alignment: Alignment.center,
                    child: CustomText(
                      text: 'Submit',
                      colorText: ColorManger.Kwhite,
                    ),
                    decoration: BoxDecoration(
                      color: ColorManger.Kblue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
