import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/base/utils/all_json.dart';
import 'package:flutter_project/base/widgets/app_double_text.dart';
import 'package:flutter_project/base/widgets/hotel/hotel.dart';
import 'package:flutter_project/base/widgets/ticket_view.dart';

import '../base/res/media.dart';
import '../base/res/styles/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyles.bgColor,
        body: ListView(
          children: [
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Good morning", style: AppStyles.headLineStyle3),
                          const SizedBox(
                            height: 5,
                          ),
                          Text("Book Tickets", style: AppStyles.headLineStyle1),
                        ],
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage(AppMedia.logo))),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD),
                    ),
                    child: const Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xFFBFC205),
                        ),
                        Text("Search"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  AppDoubleText(
                    bigText: 'Upcoming Flights',
                    smallText: 'View all',
                    func: () =>
                        Navigator.pushNamed(context, AppRoutes.allTickets),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return TicketView(
                          ticketInfo: ticketList[index],
                          hasRightMargin: true,
                        );
                      },
                      itemCount: ticketList.length,
                    ),
                  ),
                  AppDoubleText(
                    bigText: 'Hotels',
                    smallText: 'View all',
                    func: () =>
                        Navigator.pushNamed(context, AppRoutes.allHotels),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 350,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: hotelList.length,
                      itemBuilder: (context, index) => Hotel(hotel: hotelList[index],),
                      separatorBuilder: (context, index) => const SizedBox(width: 25,),
                    ),
                  ),
                  const SizedBox(height: 30,),
                ],
              ),
            ),
          ],
        ));
  }
}
