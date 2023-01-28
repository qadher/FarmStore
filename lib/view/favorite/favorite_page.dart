import 'package:flutter/material.dart';

import '../../widget/widget.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(title: 'Favorite'),
      body: SafeArea(
        child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (OverscrollIndicatorNotification overscroll) {
              overscroll.disallowIndicator();
              return false;
            },
            child: ListView.separated(
              padding: const EdgeInsets.only(bottom: 64),
              itemCount: 10,
              separatorBuilder: (context, index) => const Divider(
                color: Color(0xffE2E2E2),
                thickness: 1,
              ),
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.asset('assets/images/banana.png'),
                  title: const Text(
                    'Product Name',
                    style: TextStyle(fontSize: 16),
                  ),
                  subtitle: const Text(
                    '1kg, Price',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        '1.50',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      )
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
