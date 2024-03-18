import 'package:flutter/material.dart';
import 'package:task/Features/Data/Model/FromModel.dart';
import 'package:task/core/utils/publicWidgets/CustomText.dart';
import 'package:task/core/utils/publicWidgets/order%20Container.dart';

import '../../../core/utils/color Manger.dart';
import '../../Data/Model/DeleveryInfo.dart';
import '../../Data/Model/ToModel.dart';
import 'orderDetails.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  Delivery delivery = Delivery(
      timeOfOrder: DateTime.utc(2024, 3, 13),
      timeOfDelivery: DateTime.now(),
      payment: "20110",
      numOfPackage: "1210",
      weight: 100,
      size: "Large",
      description: 'Fragile items',
      notes: ['Handle with care'],
      status: 'safasf',
      descriptionInfo: 'fafsafsafasf');
  Forminfo forminfo = Forminfo(
      name: "mohamed Khaled",
      city: "Faisal",
      government: "Giza",
      country: "Egypt",
      phone: "01112348412");
  Toinfo toinfo = Toinfo(
    name: "Ahmed Osman",
    city: 'DownTown',
    government: "Cairo",
    country: "Egypt",
    phone: '01111134444',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Add key to Scaffold
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu, color: ColorManger.Kblue),
          onPressed: () {
            _scaffoldKey.currentState!
                .openDrawer(); // Open drawer using GlobalKey
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomText(
              text: "Order",
              fontWeight: FontWeight.w700,
              fontSize: MediaQuery.of(context).size.width * 0.04,
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => OrderDeirals(
                              deliverynumOfPackage: delivery.numOfPackage,
                              deliverypayment: delivery.payment,
                              deliverytimeOfDelivery: delivery.timeOfDelivery,
                              forminfoname: forminfo.name,
                              forminfophone: forminfo.phone,
                              forminfocity: forminfo.city,
                              forminfogovernment: forminfo.government,
                              forminfocountry: forminfo.country,
                              Toinfoname: toinfo.name,
                              Tophone: toinfo.phone,
                              Tocity: toinfo.city,
                              tocity: toinfo.city,
                              togovernment: toinfo.government,
                              tocountry: toinfo.country


                          )
                      )

                      );
                    },
                    child: OrderContainer(
                        deliverynumOfPackage: delivery.numOfPackage,
                        deliverypayment: delivery.payment,
                        deliverytimeOfDelivery: delivery.timeOfDelivery,
                        forminfoname: forminfo.name,
                        forminfophone: forminfo.phone,
                        forminfocity: forminfo.city,
                        forminfogovernment: forminfo.government,
                        forminfocountry: forminfo.country,
                        Toinfoname: toinfo.name,
                        Tophone: toinfo.phone,
                        Tocity: toinfo.city,
                        tocity: toinfo.city,
                        togovernment: toinfo.government,
                        tocountry: toinfo.country),
                  );
                },
                itemCount: 5)
          ],
        ),
      ),
    );
  }
}
