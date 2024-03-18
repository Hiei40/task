import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/color Manger.dart';
import '../../../core/utils/publicWidgets/CustomText.dart';
import '../../../core/utils/publicWidgets/order Container.dart';

class OrderDeirals extends StatefulWidget {
  const OrderDeirals({
    Key? key,
    required this.deliverynumOfPackage,
    required this.deliverypayment,
    required this.deliverytimeOfDelivery,
    required this.forminfoname,
    required this.forminfophone,
    required this.forminfocity,
    required this.forminfogovernment,
    required this.forminfocountry,
    required this.Toinfoname,
    required this.Tophone,
    required this.Tocity,
    required this.tocity,
    required this.togovernment,
    required this.tocountry,
  }) : super(key: key);

  final String deliverynumOfPackage;
  final String deliverypayment;
  final DateTime deliverytimeOfDelivery;
  final String forminfoname;
  final String forminfophone;
  final String forminfocity;
  final String forminfogovernment;
  final String forminfocountry;
  final String Toinfoname;
  final String Tophone;
  final String Tocity;
  final String tocity;
  final String togovernment;
  final String tocountry;

  @override
  State<OrderDeirals> createState() => _OrderDeiralsState();
}

class _OrderDeiralsState extends State<OrderDeirals> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Add key to Scaffold
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu, color: ColorManger.Kblue),
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
        ),
        centerTitle: true,
        title: Text(
          "YourLogo",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
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
      body:ListView(
       children: [
         Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             CustomText(
               text: "MyOrder details",
               fontWeight: FontWeight.w700,
               fontSize: MediaQuery.of(context).size.width * 0.04,
             ),
             OrderContainer(
               deliverynumOfPackage: widget.deliverynumOfPackage,
               deliverypayment: widget.deliverynumOfPackage,
               deliverytimeOfDelivery: widget.deliverytimeOfDelivery,
               forminfoname: widget.forminfoname,
               forminfophone: widget.forminfophone,
               forminfocity: widget.forminfocity,
               forminfogovernment: widget.forminfogovernment,
               forminfocountry: widget.forminfocountry,
               Toinfoname: widget.forminfoname,
               Tophone: widget.Tophone,
               Tocity: widget.tocity,
               tocity: widget.tocity,
               togovernment: widget.togovernment,
               tocountry: widget.tocountry,
             ),
             SizedBox(
               height: 20,
             ),
             // Container(
             //   width: 200,
             //
             //   child: ListView.builder(
             //     scrollDirection: Axis.vertical,
             //     itemBuilder: (context,index){return InkWell(
             //     onTap: () {},
             //     child: Padding(
             //       padding: const EdgeInsets.all(8.0),
             //       child: Container(
             //         color: Colors.red,
             //         height: 20,
             //         width: 20,
             //         // Your child widget
             //       ),
             //     ),
             //   );},
             //   itemCount: 5,
             //   ),
             // ),
             Row(
               children: [

                 CustomText(text: "Description"),
               ],
             ),
             SizedBox(
               height: 10,
             ),
             Container(
               alignment: Alignment.center,
               color: ColorManger.Kwhite,
               child: CustomText(
                 text:
                 "Our delivery service offers fast and reliable transportation of goods, ensuring your packages reach their destination safely and on time. With a focus on efficiency and customer satisfaction, we handle deliveries with care and precision, making us the perfect choice for all your delivery needs.",
                 maxLines: 20,
               ),

             ),
             SizedBox(
               height: 20,
             ),
             Row(
               children: [

                 CustomText(text: "Notes"),
               ],
             ),
             SizedBox(
               height: 10,
             ),
             Container(
               alignment: Alignment.center,
               color: ColorManger.Kwhite,
               child: CustomText(
                 text:
                 "Our delivery service offers fast and reliable transportation of goods, ensuring your packages reach their destination safely and on time. With a focus on efficiency and customer satisfaction, we handle deliveries with care and precision, making us the perfect choice for all your delivery needs.",
                 maxLines: 20,
               ),

             ),
             SizedBox(
               height: 10,
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 Container(
                   alignment: Alignment.center,
                   color: ColorManger.Kblue,
                   width: 100,
                   height: 30,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [Icon(Icons.print,color: ColorManger.Kwhite,),CustomText(text: " print",colorText: ColorManger.Kwhite,)],),
                 ),
                 Container(
                   alignment: Alignment.center,
                   color: ColorManger.Kblue,
                   width: 100,
                   height: 30,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [Icon(Icons.picture_as_pdf,color: ColorManger.Kwhite,),CustomText(text: " print",colorText: ColorManger.Kwhite,)],),
                 ),
               ],
             )
           ],
         ),
       ],
      ),
    );
  }
}

// child: Container(),
//
