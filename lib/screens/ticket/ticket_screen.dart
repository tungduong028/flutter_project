import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/base/res/media.dart';
import 'package:flutter_project/base/res/styles/app_styles.dart';
import 'package:flutter_project/base/utils/all_json.dart';
import 'package:flutter_project/base/widgets/app_column_text_layout.dart.dart';
import 'package:flutter_project/base/widgets/ticket_view.dart';
import 'package:flutter_project/screens/search/widgets/app_ticket_tab.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  late int ticketIndex = 0;

  @override
  void didChangeDependencies() {
    if(ModalRoute.of(context)!.settings.arguments!=null){
      var args = ModalRoute.of(context)!.settings.arguments as Map;
      ticketIndex=args["index"];
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ticket"),
        backgroundColor: AppStyles.bgColor,
      ),
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        children: [
          // const SizedBox(
          //   height: 40,
          // ),
          // Text(
          //   "Tickets",
          //   style: AppStyles.headLineStyle1,
          // ),
          // const SizedBox(
          //   height: 20,
          // ),
          const AppTicketTab(
            firstTab: "Upcoming",
            secondTab: "Previous",
          ),
          const SizedBox(
            height: 20,
          ),
          TicketView(
            ticketInfo: ticketList[ticketIndex],
            hasRightMargin: false,
            isColor: true,
          ),
          // const SizedBox(
          //   height: 1,
          // ),
          Container(
            //margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            decoration: BoxDecoration(
              color: AppStyles.ticketColor,
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20),),
            ),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      textTop: "Flutter DB",
                      textBottom: "Passenger",
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    AppColumnTextLayout(
                      textTop: "5221 36869",
                      textBottom: "Passport",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                    child: Text(
                                  "   ─   ─   ─   ─   ─   ─   ─   ─   ─   ─   ─   ─   ─   ─   ",
                                  style: TextStyle(color: AppStyles.bgColor),
                                )),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      textTop: "2465 658494046865",
                      textBottom: "Number of E-ticket",
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    AppColumnTextLayout(
                      textTop: "B46859",
                      textBottom: "Booking code",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "   ─   ─   ─   ─   ─   ─   ─   ─   ─   ─   ─   ─   ─   ─   ",
                    style: TextStyle(color: AppStyles.bgColor,),
                  )),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              AppMedia.visaCard,
                              scale: 11,
                            ),
                            Text(
                              " *** 2462",
                              style: AppStyles.headLineStyle3,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Payment method",
                          style: AppStyles.headLineStyle4,
                        ),
                      ],
                    ),
                    const AppColumnTextLayout(
                      textTop: "\$299.99",
                      textBottom: "Price",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      height: 70,
                      data: "2465 658494046865",
                      barcode: Barcode.code128(),
                      drawText: false,
                      color: AppStyles.textColor,
                      width: double.infinity,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          TicketView(
            ticketInfo: ticketList[ticketIndex],
            hasRightMargin: false,
          ),
        ],
      ),
    );
  }
}
