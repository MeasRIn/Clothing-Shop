import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/model/detailpage.dart';
import 'package:flutter_application_1/model/widget_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Image slider items
    final List<Widget> items = [
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          "https://keepwearing.com/wp-content/uploads/2020/08/shutterstock_132961508-scaled-2.jpg",
          fit: BoxFit.cover,
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          "https://i0.wp.com/www.mcheno.co.zw/wp-content/uploads/2023/05/AdobeStock_303371265.jpeg?fit=1200%2C800&ssl=1",
          fit: BoxFit.cover,
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          "https://www.glam.com/img/gallery/the-case-against-buying-fashion-items-just-because-theyre-on-sale/l-intro-1673627060.jpg",
          fit: BoxFit.cover,
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          "https://www.shutterstock.com/image-photo/clothes-on-clothing-hanger-260nw-2338282257.jpg",
          fit: BoxFit.cover,
        ),
      ),
    ];
    void callbackFunction(int index, CarouselPageChangedReason reason) {
      print('Page changed to: $index');
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 244, 240),
      body: SafeArea(
        child: DefaultTabController(
          length: 4,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Find Your\nFashion here",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 253, 199, 129),
                    ),
                  ),
                ),
                // search field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Search',
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: CarouselSlider(
                    items: items,
                    options: CarouselOptions(
                      height: 200,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 8),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.5,
                      onPageChanged: callbackFunction,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Text(
                    "Category",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const TabBar(
                  indicatorColor: Color.fromARGB(255, 253, 199, 129),
                  labelColor: Color.fromARGB(255, 253, 199, 129),
                  unselectedLabelColor: Colors.blueGrey,
                  tabs: [
                    Tab(
                        child:
                            Text("Top Sell", style: TextStyle(fontSize: 16))),
                    Tab(child: Text("New", style: TextStyle(fontSize: 16))),
                    Tab(
                        child:
                            Text("Discount", style: TextStyle(fontSize: 16))),
                    Tab(
                        child:
                            Text("Available", style: TextStyle(fontSize: 16))),
                  ],
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height *
                      0.85, // Adjust height as needed
                  child: TabBarView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        // top sell
                        child: ListView(
                          children: [
                            topSellCard(
                              imageUrl:
                                  "https://i.ebayimg.com/images/g/dBgAAOSwFqFix~EV/s-l1200.jpg",
                              title: "Hoodie",
                              price: "25",
                              reviews: "65",
                              context: context,
                            ),
                            topSellCard(
                              imageUrl:
                                  "https://thewellco.co/wp-content/uploads/2022/03/HM-Conscious-Collection-Organic-Baby-Clothes.jpeg",
                              title: "Hoodie",
                              price: "25",
                              reviews: "65",
                              context: context,
                            ),
                            topSellCard(
                              imageUrl:
                                  "https://www.gorillawear.com/resize/90563300-oswego-s-l-hooded-t-shirt-blue_16257513847253.jpg/0/1100/True/oswego-s-l-hooded-t-shirt-blue.jpg",
                              title: "Hoodie",
                              price: "25",
                              reviews: "20",
                              context: context,
                            ),
                            topSellCard(
                              imageUrl:
                                  "https://img.ws.mms.shopee.ph/a9b409594c4c0935aad856dd198f7985",
                              title: "Hoodie",
                              price: "35",
                              reviews: "19",
                              context: context,
                            ),
                          ],
                        ),
                      ),
                      // New
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ListView(
                          children: const [
                            Center(
                              child: Column(
                                children: [
                                  Text(
                                    "No. Item yet",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      //  Discount
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ListView(
                          children: [
                            discountCard(
                              imageUrl:
                                  "https://thewellco.co/wp-content/uploads/2022/03/HM-Conscious-Collection-Organic-Baby-Clothes.jpeg",
                              title: "Hoodie",
                              originalPrice: "25",
                              discountedPrice: "17",
                              discountAmount: "8",
                              reviews: "65",
                              context: context,
                            ),
                            discountCard(
                              imageUrl:
                                  "https://www.next.mx/nxtcms/resource/blob/5791586/ee0fc6a294be647924fa5f5e7e3df8e9/hoodies-data.jpg",
                              title: "Sweater",
                              originalPrice: "35",
                              discountedPrice: "27",
                              discountAmount: "8",
                              reviews: "85",
                              context: context,
                            ),
                          ],
                        ),
                      ),
                      // Available
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ListView(
                          children: const [
                            Center(
                              child: Column(
                                children: [
                                  Text(
                                    "No Item yet",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
