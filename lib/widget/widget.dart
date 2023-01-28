  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

  AppBar appBarWidget({required String title}) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title:  Text(
        title,
        style: TextStyle(fontSize: 20, color: Colors.black),
      ),
      centerTitle: true,
    );
  }

Padding searchField() {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CupertinoTextField(
              placeholder: 'Search',
              prefix: const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Icon(Icons.search),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          );
  }

  SizedBox sizedBox10() {
    return const SizedBox(
            height: 10,
          );
  }

  Padding seeAll() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Flexible(
            
            child: Text(
              'Exclusive Offer',
              maxLines: 1,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Flexible(
            child: Text(
              'SeeAll',
              maxLines: 1,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox productList(BuildContext context) {
    return SizedBox(
      height: 32.h,
      child: ListView.separated(
        padding: const EdgeInsets.only(left: 8),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 5,
        separatorBuilder: (ctx, index) => const SizedBox(
          width: 10,
        ),
        itemBuilder: (ctx, index) {
          return Container(
            width: MediaQuery.of(context).size.width * 0.4,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              //border line
              border: Border.all(color: const Color.fromARGB(255, 211, 211, 211), width: 1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/banana.png',
                    fit: BoxFit.fitHeight,
                    height: 80,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Banana',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text(
                  'Rs. 50',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Rs. 100',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    iconButtonWidget(icon: Icons.add,)
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Container iconButtonWidget({ Color iconColor = Colors.white,required IconData icon,Color bgColor = Colors.green}) {
    return Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: bgColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child:  Icon(
                      icon,
                      color: iconColor,
                    ),
                  );
  }

   SizedBox floatingButtonWidget(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green),
            elevation: MaterialStateProperty.all(0),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)))),
        onPressed: () {},
        child: const Text('Go to Checkout'),
      ),
    );
  }