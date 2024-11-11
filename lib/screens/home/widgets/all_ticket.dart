import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/base/utils/all_json.dart';
import 'package:flutter_project/base/widgets/ticket_view.dart';

class AllTicket extends StatelessWidget {
  const AllTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All tickets"),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: 350,
          child: ListView.builder(
            itemCount: ticketList.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.ticketScreen,
                  arguments: {
                    "index": index
                  },
                );
              },
              child: Container(
                padding: const EdgeInsets.only(top: 20),
                child: TicketView(
                  ticketInfo: ticketList[index],
                  hasRightMargin: false,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
