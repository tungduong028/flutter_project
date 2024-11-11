import 'package:flutter/material.dart';
import 'package:flutter_project/base/res/styles/app_styles.dart';
import 'package:flutter_project/base/utils/all_json.dart';

class HotelDetail extends StatefulWidget {
  const HotelDetail({super.key});

  @override
  State<HotelDetail> createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {
  late int hotelIndex = 0;

  @override
  void didChangeDependencies() {
    if (ModalRoute.of(context)!.settings.arguments != null) {
      var args = ModalRoute.of(context)!.settings.arguments as Map;
      hotelIndex = args["index"];
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Container(
                color: Colors.black.withOpacity(0.5),
                padding: const EdgeInsets.all(5),
                child: Text(
                  hotelList[hotelIndex]["place"],
                  style: const TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
              background: Image.asset(
                "assets/images/${hotelList[hotelIndex]["image"]}",
                fit: BoxFit.cover,
              ),
            ),
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppStyles.primaryColor,
                ),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                      hotelList[hotelIndex]["detail"],
                    ),
                ),
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "More Images",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.all(16),
                      child:
                          Image.asset("assets/images/${hotelList[hotelIndex]["images"][index]}"),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
