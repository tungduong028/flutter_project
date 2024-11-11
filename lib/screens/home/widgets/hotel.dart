import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/base/res/media.dart';
import 'package:flutter_project/base/res/styles/app_styles.dart';

class Hotel extends StatelessWidget {
  const Hotel({super.key, required this.hotel});

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
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                  color: AppStyles.primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("${AppMedia.baseImage}/"+hotel["image"]),
                  ),
              ),
            ),
            const SizedBox(height: 15,),
            Text(hotel["place"], style: AppStyles.headLineStyle2.copyWith(color: Colors.white),),
            const SizedBox(height: 5,),
            Text(hotel["destination"], style: AppStyles.headLineStyle3.copyWith(color: Colors.white),),
            const SizedBox(height: 5,),
            Text("\$${hotel["price"]}/night", style: AppStyles.headLineStyle2.copyWith(color: Colors.white),),
          ],
        ),
      ),
    );
  }
}