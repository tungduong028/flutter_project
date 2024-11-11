import 'package:flutter/material.dart';
import 'package:flutter_project/base/res/styles/app_styles.dart';
import 'package:flutter_project/base/utils/all_json.dart';
import 'package:flutter_project/base/widgets/app_double_text.dart';
import 'package:flutter_project/screens/search/widgets/app_text_icon.dart';
import 'package:flutter_project/screens/search/widgets/app_ticket_tab.dart';
import 'package:flutter_project/screens/search/widgets/find_tickets.dart';
import 'package:flutter_project/screens/search/widgets/ticket_promotion.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Text(
              "What are\nyou looking for?",
              style: AppStyles.headLineStyle1.copyWith(fontSize: 34),
            ),
            const AppTicketTab(),
            const SizedBox(
              height: 25,
            ),
            const AppTextIcon(
              icon: Icons.flight_takeoff_rounded,
              text: "Departure",
            ),
            const SizedBox(
              height: 20,
            ),
            const AppTextIcon(
              icon: Icons.flight_land_rounded,
              text: "Arrival",
            ),
            const SizedBox(
              height: 25,
            ),
            const FindTickets(),
            const SizedBox(
              height: 40,
            ),
            AppDoubleText(
              bigText: 'Upcoming Flights',
              smallText: 'View all',
              func: () => Navigator.pushNamed(context, AppRoutes.allTickets),
            ),
            const SizedBox(
              height: 15,
            ),
            const TicketPromotion(),
          ],
        ),
      ),
    );
  }
}
