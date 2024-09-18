import 'package:flutter/material.dart';

// ignore: camel_case_types
//for TopsellDetail card
class TopSellDetailCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price; // Add this to show the price
  final String reviews;

  const TopSellDetailCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price, // Required price
    required this.reviews,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(246, 250, 249, 248),
      appBar: AppBar(
        title: Text(title),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxHeight: 300, // Set the maximum height to 300
                  ),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover, // Adjust image scaling as needed
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 50, 12, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Price: \$ $price", // Show the price here
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Reviews: $reviews",
                      style: const TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              // button
              const Spacer(),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border),
                        label: const Text("Favorite"),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.store_mall_directory),
                        label: const Text("Buy"),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//for discount card detail
// ignore: camel_case_types
class DetailDiscountCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String originalPrice;
  final String discountedPrice;
  final String discountAmount;
  final String reviews;

  const DetailDiscountCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.originalPrice,
    required this.discountedPrice,
    required this.discountAmount,
    required this.reviews,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(246, 250, 249, 248),
      appBar: AppBar(
        title: Text(title),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              // Product Image
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxHeight: 300, // Set the maximum height for the image
                  ),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Price and Review Information
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 50, 12, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Original Price: \$ $originalPrice",
                          style: const TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Price Now: \$ $discountedPrice",
                          style: const TextStyle(
                            color: Colors.green,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "$reviews Reviews",
                      style: const TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              // Spacer to push the buttons to the bottom
              const Spacer(),
              // Favorite and Buy Buttons
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border),
                        label: const Text("Favorite"),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.store),
                        label: const Text("Buy"),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
