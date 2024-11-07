import 'package:flutter/material.dart';
import 'package:flutter_project/base/bottom_nav_bar.dart';
import 'package:flutter_project/screens/all_ticket.dart';
import 'package:flutter_project/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BottomNavBar(),
      routes: {
        // "/":(context) => const BottomNavBar(),
        "/all_tickets":(context) => const AllTicket(),
      },
    );
  }
}