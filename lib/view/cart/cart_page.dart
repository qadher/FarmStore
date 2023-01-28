import 'package:flutter/material.dart';

import '../../widget/widget.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(title: 'My Cart'),
      body: SafeArea(
        child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (OverscrollIndicatorNotification overscroll) {
              overscroll.disallowIndicator();
              return false;
            },
            child: ListView.separated(
              padding: const EdgeInsets.only(right: 8,left: 8,bottom: 64),
              
              itemCount: 10,
              separatorBuilder: (context, index) => const Divider(
                color: Color(0xffE2E2E2),
                thickness: 1,
              ),
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.white,
                  height: 85,
                  child: Row(
                    children: [
                      Image.asset('assets/images/banana.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: 'Product Name\n',
                                    style: DefaultTextStyle.of(context).style,
                                    children: const <TextSpan>[
                                      TextSpan(
                                        text: '1kg, Price',
                                        style: TextStyle(fontSize: 14, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                                // const Text(
                                //   'Product Name \n1 kg,Price',
                                //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                // ),
                                // Expanded(child: SizedBox()),
                                const Icon(Icons.close)
                              ],
                            ),
                            const Expanded(child: SizedBox()),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: const Icon(
                                    Icons.remove,
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                const Text(
                                  '1',
                                  style: TextStyle(fontSize: 16),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.green,
                                  ),
                                ),
                                const Expanded(child: SizedBox()),
                                const Text('4.99')
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            )),
      ),
      floatingActionButton: floatingButtonWidget(context),
    );
  }

 
}
