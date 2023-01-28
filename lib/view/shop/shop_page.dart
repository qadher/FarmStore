import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../widget/widget.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        //center Row
        title: Column(
          children: <Widget>[
            SvgPicture.asset('assets/icons/carrot.svg'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/location.svg'),
                const SizedBox(
                  width: 5,
                ),
                const Text('Athani, Ernakulam', style: TextStyle(fontSize: 18, color: Colors.black)),
                sizedBox10()
              ],
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overscroll) {
          overscroll.disallowIndicator();
          return false;
        },
        child: ListView(
          children: [
            sizedBox10(),
            searchField(),
            sizedBox10(),
            SizedBox(
              height: 18.h,
              width: MediaQuery.of(context).size.width,
              child: CarouselSlider.builder(
                itemCount: 10,
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: false,
                  viewportFraction: 1,
                ),
                itemBuilder: (ctx, index, realIdx) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1566385101042-1a0aa0c1268c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1632&q=80',
                        fit: BoxFit.cover,
                        width: 1000,
                      ),
                    ),
                  );
                },
              ),
            ),
            sizedBox10(),
            seeAll(),
            sizedBox10(),
            productList(context),
            sizedBox10(),
            seeAll(),
            sizedBox10(),
            productList(context),
            sizedBox10(),
            seeAll(),
            sizedBox10(),
            SizedBox(
              height: 15.h,
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

                    width: MediaQuery.of(context).size.width * 0.6,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 248, 221, 192),
                      //border line
                      border: Border.all(color: const Color.fromARGB(255, 211, 211, 211), width: 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.circular(15)),
                          child: Image.asset(
                            'assets/images/pulses.png',
                            fit: BoxFit.fitHeight,
                            height: 80,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Pulses',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            sizedBox10(),
            productList(context),
            sizedBox10(),
          ],
        ),
      )),
    );
  }



  
}
