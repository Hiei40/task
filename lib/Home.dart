import 'package:flutter/material.dart';
import 'package:task/color%20Manger.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Add key to Scaffold
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu, color: ColorManger.Kblue,),
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer(); // Open drawer using GlobalKey
          },
        ),
        centerTitle: true,
        title: Text("YourLogo",style: TextStyle(

        ),),
      actions: [
        Icon(Icons.notifications,
        color: ColorManger.Kblue,)
      ],
      ),
      drawer: Drawer(
        child: Padding(
          padding: EdgeInsets.only(
              top: 0.0922722029988466 * MediaQuery.of(context).size.width),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  "profile",
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "setting",
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "tell your friends",
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "privacy and policy",
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "about us",
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "contact us",
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "log out",
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(children: [


      ],),
    );
  }
}
