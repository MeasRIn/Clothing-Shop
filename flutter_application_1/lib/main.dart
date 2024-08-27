import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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

    final stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        const Icon(Icons.star, color: Colors.black),
      ],
    );

    Widget topSellCard() {
      return Card(
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //image
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Center(
                child: Container(
                  width: 250,
                  child: Image.network(
                    "https://www.next.mx/nxtcms/resource/blob/5791586/ee0fc6a294be647924fa5f5e7e3df8e9/hoodies-data.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            //review 
            Padding(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text("Title : ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
                        Text("Hoodie", style: TextStyle(fontSize: 17))
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text("Price : ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
                        Text("25\$", style: TextStyle(fontSize: 17))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  stars,
                  const Text(
                    "102 Reviews",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            //icon btn
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.favorite, size: 24),
                        const SizedBox(height: 4),
                        const Text("Like"),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.comment, size: 24),
                        const SizedBox(height: 4),
                        const Text("Comment"),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.share, size: 24),
                        const SizedBox(height: 4),
                        const Text("Share"),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        MaterialButton(
                          onPressed: () {},
                          child: Text("Buy"),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          color: Colors.lightBlue,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    void callbackFunction(int index, CarouselPageChangedReason reason) {
      print('Page changed to: $index');
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 242, 233),
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
                //search field
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
                    Tab(child: Text("Top Sell", style: TextStyle(fontSize: 18))),
                    Tab(child: Text("New", style: TextStyle(fontSize: 18))),
                    Tab(child: Text("Discount", style: TextStyle(fontSize: 18))),
                    Tab(child: Text("Available", style: TextStyle(fontSize: 18))),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6, // Adjust height as needed
                  child: TabBarView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            topSellCard(),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            topSellCard(),
                          ],
                        ),
                      ),
                      Center(child: Text('Not yet', style: TextStyle(fontSize: 20))),
                      Center(child: Text('Not yet', style: TextStyle(fontSize: 20))),
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
            icon: Icon(Icons.home ,color: Color.fromARGB(255, 253, 199, 129),),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite,color: Color.fromARGB(255, 253, 199, 129)),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications ,color: Color.fromARGB(255, 253, 199, 129)),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: Color.fromARGB(255, 253, 199, 129)),
            label: 'Profile',
          
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
