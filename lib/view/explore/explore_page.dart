import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widget/widget.dart';
import 'components/searchbar.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(title: 'Find Products'),
      body: SafeArea(
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (OverscrollIndicatorNotification overscroll) {
            overscroll.disallowIndicator();
            return false;
          },
          child: ListView(
            children: [
              sizedBox10(),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: GestureDetector(
                  onTap: () {
                    print('search clicked');
                    showSearch(context: context, delegate: SearchBar());
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: 8),
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.search),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Search', style: TextStyle(fontSize: 18, color: Colors.grey)),
                      ],
                    ),
                    // child: CupertinoTextField(
                    //   readOnly: true,
                    //   placeholder: 'Search',
                    //   prefix: const Padding(
                    //     padding: EdgeInsets.only(left: 8.0),
                    //     child: Icon(Icons.search),
                    //   ),
                    //   padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    //   decoration: BoxDecoration(
                    //     color: Colors.grey[200],
                    //     borderRadius: BorderRadius.circular(10),
                    //   ),
                    // ),
                  ),
                ),
              ),
              sizedBox10(),
              //gridview for products
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2 / 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 178,
                  ),
                  itemBuilder: (ctx, index) {
                    return Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/banana.png'),
                          sizedBox10(),
                          sizedBox10(),
                          const Text(
                            'Product Name ',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            'P',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              sizedBox10(),
            ],
          ),
        ),
      ),
    );
  }
}
