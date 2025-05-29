import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_english_mobilapp/controllers/homePageController.dart';
import 'package:learning_english_mobilapp/themes/colors.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  final homePageController = Get.put(HomePageController());
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text("Anasayfa"),
        actions: [
          Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  color: white,
                  border: Border.all(color: borderColor, width: 2),
                  shape: BoxShape.circle),
              child: Image.asset("assets/images/ai_rabbit.png"))
        ],
      ),
      body: Column(
        children: [_buildCampaigns(), _buildGridView()],
      ),
    );
  }

  Widget _buildCampaigns() {
    return SizedBox(
      height: 200,
      child: PageView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all(color: borderColor)),
              child: Text("Campaign 1"),
            );
          }),
    );
  }

  Widget _buildGridView() {
    return Expanded(
      child: GridView.builder(
          itemCount: 5,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(
                  height: 150,
                  child: LottieBuilder.asset(
                      homePageController.homePageImageContent[index]),
                ),
                Text(
                  homePageController.homePageTextContent[index],
                )
              ],
            );
          }),
    );
  }
}
