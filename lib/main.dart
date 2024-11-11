import 'package:flutter/material.dart';
import 'package:flutter_project/base/bottom_nav_bar.dart';
import 'package:flutter_project/base/utils/all_json.dart';
import 'package:flutter_project/screens/home/all_hotels.dart';
import 'package:flutter_project/screens/home/hotel_detail.dart';
import 'package:flutter_project/screens/home/widgets/all_ticket.dart';
import 'package:flutter_project/screens/ticket/ticket_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.homePage:(context) => BottomNavBar(),
        AppRoutes.allTickets:(context) => const AllTicket(),
        AppRoutes.ticketScreen:(context) => const TicketScreen(),
        AppRoutes.allHotels:(context) => const AllHotels(),
        AppRoutes.hotelDetail:(context) => const HotelDetail()
      },
    );
  }
}