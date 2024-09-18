import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Account"),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Handle settings action
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Center(
                    child: Container(
                      height: 180,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 253, 199, 129),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 25,
                    left: 25,
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.blueGrey,
                      child: ClipOval(
                        child: Image.network(
                          "https://www.example.com/profile_picture.jpg",
                          fit: BoxFit.cover,
                          width: 80,
                          height: 80,
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 45,
                    left: 110,
                    child: Column(
                      children: [
                        Text(
                          "Meas Rin",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.edit),
                    ),
                  ),
                  const Positioned(
                    bottom: 20,
                    left: 20,
                    child: Row(
                      children: [
                        Icon(Icons.phone, color: Colors.black54),
                        SizedBox(width: 8),
                        Text("+855 16-729-829", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                  const Positioned(
                    bottom: 20,
                    right: 20,
                    child: Row(
                      children: [
                        Icon(Icons.account_balance_wallet,
                            color: Colors.black54),
                        SizedBox(width: 8),
                        Text("Balance: \$100", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ],
              ),
              // const SizedBox(height: 20),
              // ElevatedButton.icon(
              //   onPressed: () {
              //     // Handle button press
              //   },
              //   icon: const Icon(Icons.edit),
              //   label: const Text("Edit Profile"),
              //   style: ElevatedButton.styleFrom(
              //     padding: const EdgeInsets.symmetric(
              //         vertical: 12.0, horizontal: 24.0),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
