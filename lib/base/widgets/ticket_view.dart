import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/base/res/styles/app_styles.dart';
import 'package:flutter_project/base/widgets/app_layoutbuilder_widget.dart';
import 'package:flutter_project/base/widgets/big_dot.dart';
import 'package:flutter_project/base/widgets/text_style_fourth_ticket.dart';
import 'package:flutter_project/base/widgets/text_style_third_ticket.dart';
import 'package:flutter_project/base/widgets/ticket/text_layout_orange.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key, required this.ticketInfo, required this.hasRightMargin});

  final Map<String, dynamic> ticketInfo;
  final bool hasRightMargin;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 180,
      child: Container(
        margin: hasRightMargin ? const EdgeInsets.only(right: 16) : null,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticketInfo["from"]["code"],
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      const BigDot(color: Colors.lightBlueAccent,),
                      Expanded(
                        child: Stack(
                          children: [
                            const SizedBox(
                              height: 24,
                              child: AppLayoutbuilderWidget(
                                randomDivider: 6,
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.57,
                                child: const Icon(Icons.local_airport_rounded,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                      const BigDot(color: Colors.lightBlueAccent,),
                      Expanded(child: Container()),
                      Text(
                        ticketInfo["to"]["code"],
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextStyleFourthTicket(text: ticketInfo["from"]["name"], isAlignEnd: false,),
                      Text(
                        ticketInfo["flying_time"],
                        style: AppStyles.headLineStyle4
                            .copyWith(color: Colors.white),
                      ),
                      TextStyleFourthTicket(text: ticketInfo["to"]["name"], isAlignEnd: true,),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 20,
              color: AppStyles.ticketOrange,
              child: const Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20) 
                        )
                      ),
                    ),
                  ),
                  Expanded(child: Center(child: Text("   ─   ─   ─   ─   ─   ─   ─   ─   ─   ─   ─   ─   ─   ─   ─   ─   ", style: TextStyle(color: Colors.white),))),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20) 
                        )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketOrange,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextLayoutOrange(textTop: ticketInfo["date"], textBottom: "Date", alignment: CrossAxisAlignment.start,),
                      TextLayoutOrange(textTop: ticketInfo["departure_time"], textBottom: "Departure time", alignment: CrossAxisAlignment.center,),
                      TextLayoutOrange(textTop: ticketInfo["number"].toString(), textBottom: "Number", alignment: CrossAxisAlignment.end,),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
