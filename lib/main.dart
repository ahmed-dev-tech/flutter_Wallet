import 'package:flutter/material.dart';

void main() {
  runApp(ChaiLabsApp());
}

class ChaiLabsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChaiLabs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ChaiLabsHomePage(),
    );
  }
}

class ChaiLabsHomePage extends StatelessWidget {
  const ChaiLabsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ChaiLabs Home',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: ElevatedButton(
              onPressed: () => {
                // const Wallet()
                // Handle button press
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
              ),
              child: const Text(
                "Connect Wallet",
                style: TextStyle(color: Colors.black),
              ),
            ),
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.purple, Colors.deepPurple],
          ),
        ),
        child: const Center(
          child: Text(
            'Welcome to ChaiLabs!',
            style: TextStyle(fontSize: 24.0, color: Colors.white),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.discord),
                onPressed: () => {
                  // Handle Discord icon press
                },
              ),
              // IconButton(
              //   icon: Icon(Icons.t),
              //   onPressed: () {
              //     // Handle Twitter icon press
              //   },
              // ),
              IconButton(
                icon: const Icon(Icons.facebook),
                onPressed: () {
                  // Handle Facebook icon press
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
