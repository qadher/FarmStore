import 'package:flutter/material.dart';

import '../../widget/widget.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (OverscrollIndicatorNotification overscroll) {
            overscroll.disallowIndicator();
            return false;
          },
          child: ListView(
            children: [
              sizedBox10(),
              ListTile(
                leading: CircleAvatar(child: Image.asset('assets/images/banana.png')),
                title: const Text('Qadher'),
                subtitle: const Text('qadher7@gmail.com'),
              ),
              const Divider(
                color: Color(0xffE2E2E2),
                thickness: 1,
              ),
              ListView.separated(
                padding: const EdgeInsets.only(bottom: 40),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    height: 30,
                    child: Row(
                      children: [
                        const Icon(Icons.card_giftcard),
                        SizedBox(width: 10,),
                        const Text('Order'),
                        const Spacer(),
                        const Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => const Divider(
                  color: Color(0xffE2E2E2),
                  thickness: 1,
                ),
              ),
            ],
          )),
    ));
  }
}
