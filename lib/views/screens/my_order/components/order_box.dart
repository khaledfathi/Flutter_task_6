import 'package:flutter/material.dart';
import 'package:task_l5/views/shared/container_with_shadow.dart';

class OrderBox extends StatelessWidget {
  const OrderBox({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWithShadow(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(vertical: 10 , horizontal: 20),
      height: 180,
      width: double.infinity,
      child: Column(
        children: [
          //upper row
          const SizedBox(
            height: 115,
            width: double.infinity,
            child:  Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Order #',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Date'),
                        Text('Total Price'),
                        Text('Status'),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '214325345',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('9/7/2022'),
                        Text('\$ 5434'),
                        Text('Pending'),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),

          //lower ==>
          Row(
            children: [
              Container(
                height: 30,
                width: 100,
                color: Colors.deepPurpleAccent,
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    'Details',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                height: 30,
                width: 100,
                color: Colors.grey,
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    'Track',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
