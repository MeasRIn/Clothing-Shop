import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
                      autoPlayAnimationDuration: const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.5,
                      onPageChanged: callbackFunction,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
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
                    Tab(child: Text("Top Sell", style: TextStyle(fontSize: 16))),
                    Tab(child: Text("New", style: TextStyle(fontSize: 16))),
                    Tab(child: Text("Discount", style: TextStyle(fontSize: 16))),
                    Tab(child: Text("Available", style: TextStyle(fontSize: 16))),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.85, // Adjust height as needed
                  child: TabBarView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        // top sell
                        child: ListView(
                          children: [
                               topSellCard(
                                imageUrl: "https://i.ebayimg.com/images/g/dBgAAOSwFqFix~EV/s-l1200.jpg",
                                title: "Hoodie",
                                discountedPrice:"25",
                                reviews: "65",
                              ),
                                topSellCard(
                                imageUrl: "https://thewellco.co/wp-content/uploads/2022/03/HM-Conscious-Collection-Organic-Baby-Clothes.jpeg",
                                title: "Hoodie",
                                discountedPrice:"25",
                                reviews: "65",
                              ),
                                topSellCard(
                                imageUrl: "https://www.gorillawear.com/resize/90563300-oswego-s-l-hooded-t-shirt-blue_16257513847253.jpg/0/1100/True/oswego-s-l-hooded-t-shirt-blue.jpg",
                                title: "Hoodie",
                                discountedPrice:"25",
                                reviews: "20",
                              ),
                              topSellCard(
                                imageUrl: "https://img.ws.mms.shopee.ph/a9b409594c4c0935aad856dd198f7985", 
                                title: "Hoodie", 
                                reviews: "19")
                          ],
                        ),
                      ),
                      // New
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ListView(
                          children: [
                            Center(
                              child: Column(
                                children: [
                                  Text("No. Item yet",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
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
                                imageUrl: "https://thewellco.co/wp-content/uploads/2022/03/HM-Conscious-Collection-Organic-Baby-Clothes.jpeg",
                                title: "Hoodie",
                                originalPrice:"25",
                                discountedPrice:"5",
                                discountAmount:"20",
                                reviews: "65",
                              ),
                              discountCard(
                                imageUrl: "https://www.next.mx/nxtcms/resource/blob/5791586/ee0fc6a294be647924fa5f5e7e3df8e9/hoodies-data.jpg",
                                title: "Sweater",
                                originalPrice:"35",
                                discountedPrice:"5",
                                discountAmount:"30",
                                reviews: "85",
                              ),
                          ],
                        ),
                      ),
                      // Available
                       Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ListView(
                          children: [
                            Center(
                              child: Column(
                                children: [
                                  Text("No Item yet",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
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
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color.fromARGB(255, 253, 199, 129)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border, color: Color.fromARGB(255, 253, 199, 129)),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, color: Color.fromARGB(255, 253, 199, 129)),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_checkout, color: Color.fromARGB(255, 253, 199, 129)),
            label: "Store",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Color.fromARGB(255, 253, 199, 129)),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        backgroundColor: const Color.fromARGB(255, 231, 184, 140),
        onTap: _onItemTapped,
      ),
    );
  }
  //any function 

  Widget discountCard({
    required String imageUrl,
    required String title,
    required String originalPrice,
    required String discountedPrice,
    String discountAmount='0',
    required String reviews,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      shadowColor: Colors.black38,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product image with rounded corners
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                // width: double.infinity,
                // height: 250,
                width: 250,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title and Discount Badge
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.grey[800],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        "$discountAmount Off",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                // Price Information
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Price: $originalPrice",
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Total Price: $discountedPrice",
                          style: TextStyle(
                            color: Colors.green[700],
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow[700], size: 20),
                        const SizedBox(width: 5),
                        Text(
                          "$reviews Reviews",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Action Buttons
          Padding(
            padding:EdgeInsets.fromLTRB(15, 10, 15,25),
            child: Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border,color: Color.fromARGB(255, 253, 199, 129),),
                    label: Text("Like"),
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      side: BorderSide(color: Color.fromARGB(255, 253, 199, 129)),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.shopping_cart,color: Color.fromARGB(255, 253, 199, 129),),
                    label: Text("Buy Now"),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      // primary: Colors.orangeAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  // top sell card
  Widget topSellCard({
    required String imageUrl,
    required String title,
    String originalPrice='0',
    String discountedPrice='0',
    String discountAmount='0',
    required String reviews,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      shadowColor: Colors.black38,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product image with rounded corners
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                // width: double.infinity,
                // height: 250,
                width: 250,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title and Discount Badge
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.grey[800],
                      ),
                    ),
                   
                  ],
                ),
                const SizedBox(height: 10),
                // Price Information
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       
                        Text(
                          "Total Price: $discountedPrice",
                          style: TextStyle(
                            color: Colors.green[700],
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow[700], size: 20),
                        const SizedBox(width: 5),
                        Text(
                          "$reviews Reviews",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Action Buttons
          Padding(
            padding:EdgeInsets.fromLTRB(15, 10, 15,25),
            child: Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border,color: Color.fromARGB(255, 253, 199, 129),),
                    label: Text("Like"),
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      side: BorderSide(color: Color.fromARGB(255, 253, 199, 129)),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.shopping_cart,color: Color.fromARGB(255, 253, 199, 129),),
                    label: Text("Buy Now"),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      // primary: Colors.orangeAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  
}
