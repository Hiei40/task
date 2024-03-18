import 'package:flutter/cupertino.dart';

import '../color Manger.dart';
import 'CustomText.dart';

class OrderContainer extends StatelessWidget {
  const OrderContainer(
      {super.key,
      required this.deliverynumOfPackage,
      required this.deliverypayment,
      required this.deliverytimeOfDelivery,
      required this.forminfoname,
      required this.forminfophone,
      required this.forminfocity,
      required this.forminfogovernment,
      required this.forminfocountry, required this.Toinfoname, required this.Tophone, required this.Tocity, required this.tocity, required this.togovernment, required this.tocountry
      });
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
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: ColorManger.WhiteSwap,
        ),
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.23,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: ColorManger.Kblue,
                        ),
                      ),
                      CustomText(
                        text: " MyOrder:${deliverynumOfPackage}",
                        fontWeight: FontWeight.w700,
                        fontSize: MediaQuery.of(context).size.width * 0.020,
                      ),
                      CustomText(
                        text: " MyOrder:${deliverypayment}",
                        fontWeight: FontWeight.w700,
                        fontSize: MediaQuery.of(context).size.width * 0.020,
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
                          color: ColorManger.Kblue,
                        ),
                        child: CustomText(
                          text: "${deliverytimeOfDelivery}",
                          fontWeight: FontWeight.w700,
                          fontSize: MediaQuery.of(context).size.width * 0.02,
                          colorText: ColorManger.Kwhite,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 1,
                    width: 450,
                    color: ColorManger.Lynch,
                  ),
                  Row(
                    children: [
                      Container(
                        child: CustomText(
                          text: "From",
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.055,
                      ),
                      CustomText(
                        text: "${forminfoname}",
                        fontWeight: FontWeight.w700,
                        fontSize: MediaQuery.of(context).size.width * 0.025,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.055,
                      ),
                      CustomText(
                        text: "Phone:${forminfophone}",
                        fontWeight: FontWeight.w700,
                        fontSize: MediaQuery.of(context).size.width * 0.025,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.145,
                      ),
                      CustomText(
                        text: "City:${forminfocity}",
                        fontWeight: FontWeight.w700,
                        fontSize: MediaQuery.of(context).size.width * 0.025,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.145,
                      ),
                      CustomText(
                        text:
                            "ShipingAddress:${forminfocity},${forminfogovernment},${forminfocountry}",
                        fontWeight: FontWeight.w700,
                        fontSize: MediaQuery.of(context).size.width * 0.025,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 1,
                    width: 450,
                    color: ColorManger.Lynch,
                  ),
                  Row(
                    children: [
                      Container(
                        child: CustomText(
                          text: "To",
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.105,
                      ),
                      CustomText(
                        text: "${Toinfoname}",
                        fontWeight: FontWeight.w700,
                        fontSize: MediaQuery.of(context).size.width * 0.025,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.055,
                      ),
                      CustomText(
                        text: "Phone:${Tophone}",
                        fontWeight: FontWeight.w700,
                        fontSize: MediaQuery.of(context).size.width * 0.025,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.145,
                      ),
                      CustomText(
                        text: "City:${Tocity}",
                        fontWeight: FontWeight.w700,
                        fontSize: MediaQuery.of(context).size.width * 0.025,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.145,
                      ),
                      CustomText(
                        text:
                            "ShipingAddress:${tocity},${togovernment},${tocountry}",
                        fontWeight: FontWeight.w700,
                        fontSize: MediaQuery.of(context).size.width * 0.025,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 1,
                    width: 450,
                    color: ColorManger.Lynch,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      CustomText(text: "Deliver By:${deliverytimeOfDelivery}"),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 60,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorManger.Kblue,
                        ),
                        child: CustomText(
                          text: 'Details',
                          colorText: ColorManger.Kwhite,
                          fontWeight: FontWeight.w400,
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
