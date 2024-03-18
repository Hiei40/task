import 'package:flutter/material.dart';
import 'package:task/Features/Data/Model/FromModel.dart';
import 'package:task/core/utils/publicWidgets/CustomText.dart';
import 'package:task/core/utils/publicWidgets/order%20Container.dart';

import '../../../core/utils/color Manger.dart';
import 'Features/Data/Model/DeleveryInfo.dart';


class Changepassword extends StatefulWidget {
  const Changepassword({Key? key}) : super(key: key);

  @override
  State<Changepassword> createState() => _ChangepasswordState();
}

class _ChangepasswordState extends State<Changepassword> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Add key to Scaffold
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu, color: ColorManger.Kblue),
          onPressed: () {

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
      body: ListView(
        children: [
          Column(
            children: [
              CustomText(
                text: "your new password must be diffrent  From your previeous Password",
                maxLines: 2,
                fontWeight: FontWeight.w700,
                fontSize: MediaQuery.of(context).size.width * 0.04,
              ),

            ],
          ),
        ],
      ),
    );
  }
}
