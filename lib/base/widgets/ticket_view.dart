import 'dart:isolate';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/base/res/styles/app_styles.dart';
import 'package:flutter_project/base/widgets/app_layoutbuilder_widget.dart';
import 'package:flutter_project/base/widgets/big_dot.dart';
import 'package:flutter_project/base/widgets/text_style_fourth_ticket.dart';
import 'package:flutter_project/base/widgets/text_style_third_ticket.dart';
import 'package:flutter_project/base/widgets/app_column_text_layout.dart.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key, required this.ticketInfo, required this.hasRightMargin, this.isColor=null});

  final Map<String, dynamic> ticketInfo;
  final bool hasRightMargin;
  final bool? isColor;

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
                color: isColor == null ? AppStyles.ticketBlue : AppStyles.ticketColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      TextStyleThirdTicket(
                        text: ticketInfo["from"]["code"],
                        isAlignEnd: false,
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      BigDot(isColor: isColor,),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: AppLayoutbuilderWidget(
                                isColor: isColor,
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.57,
                                child: Icon(Icons.local_airport_rounded,
                                    color: isColor == null ? Colors.white : const Color(0xFFBACCF7)),
                              ),
                            )
                          ],
                        ),
                      ),
                      BigDot(isColor: isColor,),
                      Expanded(child: Container()),
                      TextStyleThirdTicket(
                        text: ticketInfo["to"]["code"],
                        isAlignEnd: true,
                        isColor: isColor,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextStyleFourthTicket(text: ticketInfo["from"]["name"], isAlign: TextAlign.start, isColor: isColor,),
                      TextStyleFourthTicket(text: ticketInfo["flying_time"], isAlign: TextAlign.center, isColor: isColor,),
                      TextStyleFourthTicket(text: ticketInfo["to"]["name"], isAlign: TextAlign.end, isColor: isColor,),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 20,
              color: isColor==null ? AppStyles.ticketOrange : AppStyles.ticketColor,
              child: Row(
                children: [
                  const SizedBox(
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
                  Expanded(child: Center(child: Text("   ─   ─   ─   ─   ─   ─   ─   ─   ─   ─   ─   ─   ─   ─   ─   ─   ", style: TextStyle(color: isColor==null ? Colors.white : AppStyles.bgColor),))),
                  const SizedBox(
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
                color: isColor==null ? AppStyles.ticketOrange : AppStyles.ticketColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor==null?21:0),
                  bottomRight: Radius.circular(isColor==null?21:0),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(textTop: ticketInfo["date"], textBottom: "Date", alignment: CrossAxisAlignment.start, isColor: isColor,),
                      AppColumnTextLayout(textTop: ticketInfo["departure_time"], textBottom: "Departure time", alignment: CrossAxisAlignment.center, isColor: isColor,),
                      AppColumnTextLayout(textTop: ticketInfo["number"].toString(), textBottom: "Number", alignment: CrossAxisAlignment.end, isColor: isColor,),
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
