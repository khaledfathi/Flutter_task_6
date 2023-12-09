import 'package:flutter/material.dart';
import 'package:task_l5/views/screens/check_out/components/check_out_address_box.dart';
import 'package:task_l5/views/screens/check_out/components/check_out_cart_box.dart';
import 'package:task_l5/views/screens/check_out/components/check_out_footer.dart';
import 'package:task_l5/views/screens/check_out/components/check_out_order_summary_box.dart';
import 'package:task_l5/views/screens/check_out/components/check_out_payment_box.dart';
import 'package:task_l5/views/screens/check_out/components/check_out_section_header.dart';
import 'package:task_l5/views/screens/check_out/components/check_out_shipping_mode_box.dart';

class CheckOutScreen extends StatelessWidget {
  static const String route = 'check-out';
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Check Out'),
          centerTitle: true,
        ),
        body: SizedBox(
          width: screenWidth,
          height: screenHeight,
          child: Column(
            children: [
              //body
              Expanded(
                child: ListView(
                  children:   const [
                    //your address section
                    CheckOutSectionHeader(title: 'Your Address', trailing: 'Change Address'),
                    CheckOutAddressBox(),
                    //shipping mode section
                    CheckOutSectionHeader(title: 'Shipping Mode', trailing: 'Change Mode'),
                    CheckOutShippingBox(),
                    //your cart section
                    CheckOutSectionHeader(title: 'Your Cart', trailing: 'View All'),
                    CheckOutCartBox(),
                    //payment method section
                    CheckOutSectionHeader(title: 'Payment Method'),
                    CheckOutPaymentBox(),
                    //order summary section
                    CheckOutSectionHeader(title: 'Order Summery',),
                    CheckOutOrderSummaryBox(),
                  ],
                ),
              ),
              //footer
              const CheckOutFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
