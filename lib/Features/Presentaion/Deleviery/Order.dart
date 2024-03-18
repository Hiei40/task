import 'package:flutter/material.dart';
import 'package:task/core/utils/publicWidgets/CustomText.dart';

import '../../../core/utils/color Manger.dart';
import '../../Data/Model/DeleveryInfo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  Delivery delivery =Delivery(timeOfOrder: DateTime.now(), timeOfDelivery: DateTime.now(), payment: "20110", numOfPackage: "1210", weight: 100,  size: "Large", description: 'Fragile items', notes: ['Handle with care'], status: 'safasf', descriptionInfo: 'fafsafsafasf');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Add key to Scaffold
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu, color: ColorManger.Kblue),
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer(); // Open drawer using GlobalKey
          },
        ),
        centerTitle: true,
        title: Text(
          "YourLogo",
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
      drawer: Drawer(
        child: Padding(
          padding: EdgeInsets.only(
              top: 0.0922722029988466 * MediaQuery.of(context).size.width),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {},
                child: Text("profile"),
              ),
              TextButton(
                onPressed: () {},
                child: Text("setting"),
              ),
              TextButton(
                onPressed: () {},
                child: Text("tell your friends"),
              ),
              TextButton(
                onPressed: () {},
                child: Text("privacy and policy"),
              ),
              TextButton(
                onPressed: () {},
                child: Text("about us"),
              ),
              TextButton(
                onPressed: () {},
                child: Text("contact us"),
              ),
              TextButton(
                onPressed: () {},
                child: Text("log out"),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [

CustomText(text: "MyOrder",fontWeight: FontWeight.w700,
fontSize:MediaQuery.of(context).size.width* 0.04,
),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: ColorManger.WhiteSwap,

              ),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.20,
              child: Stack(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(children: [
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: ColorManger.Kblue,

                          ),
                        ),
                        CustomText(text: " MyOrder:${delivery.numOfPackage}",fontWeight: FontWeight.w700,
                          fontSize:MediaQuery.of(context).size.width* 0.020,
                        ),
                        CustomText(text: " MyOrder:${delivery.payment}",fontWeight: FontWeight.w700,
                          fontSize:MediaQuery.of(context).size.width* 0.020,
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 130,
                          height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:ColorManger.Kblue,
                      ),
                          child:  CustomText(text: "${delivery.timeOfDelivery}",fontWeight: FontWeight.w700,
                            fontSize:MediaQuery.of(context).size.width* 0.02,
                          ) ,
                        )
                      ],),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 1,
                        width: 450,
                        color: Colors.red,
                      )
                    ],
                  ),
                )


              ],),
            ),
          ),
        ],
      ),
    );
  }
}
