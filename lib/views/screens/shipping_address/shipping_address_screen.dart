import 'package:flutter/material.dart';
import 'package:task_l5/views/screens/shipping_address/components/address_boxs.dart';

class ShippinAddressScreen extends StatelessWidget {
  static const String route = 'shipping-address';

  const ShippinAddressScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Shipping address'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              child: const Text('your shipping addresses'),
            ),
            Column(
              children: [
                ..._addressBoxs(),
              ],
            )
          ],
        ),
      ),
    );
  }

  List<Widget> _addressBoxs() {
    List<Widget> addressesList = [];
    for (var i = 0; i < 8; i++) {
      addressesList.add(const AddressBoxs());
    }
    return addressesList;
  }
}
