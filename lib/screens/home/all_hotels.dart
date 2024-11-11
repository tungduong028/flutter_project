import 'package:flutter/material.dart';
import 'package:flutter_project/base/res/media.dart';
import 'package:flutter_project/base/res/styles/app_styles.dart';
import 'package:flutter_project/base/utils/all_json.dart';
import 'package:flutter_project/screens/home/widgets/hotel.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(
        title: const Text("All Hotels"),
        backgroundColor: AppStyles.bgColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.9,
          ),
          itemCount: hotelList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.hotelDetail, arguments: {
                  "index": index
                },);
              },
              child: HotelGridView(hotel: hotelList[index]),
            );
          },
        ),
      ),
    );
  }
}

class HotelGridView extends StatelessWidget {
  const HotelGridView({super.key, required this.hotel});

  final Map<String, dynamic> hotel;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: 350,
      width: screenSize.width * 0.6,
      decoration: BoxDecoration(
          color: AppStyles.ticketBlue, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.2,
              child: Container(
                decoration: BoxDecoration(
                  color: AppStyles.primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image:
                        AssetImage("${AppMedia.baseImage}/" + hotel["image"]),
                  ),
                ),
              ),
            ),
            Text(
              hotel["place"],
              style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
            ),
            Row(
              children: [
                Text(
                  hotel["destination"],
                  style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "\$${hotel["price"]}/night",
                  style: AppStyles.headLineStyle4.copyWith(color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
