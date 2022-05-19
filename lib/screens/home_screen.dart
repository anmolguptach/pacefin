import 'package:flutter/material.dart';
import 'package:pacefin/constants/colors.dart';
import 'package:pacefin/model/home_card_model.dart';
import 'package:pacefin/widgets/appbar.dart';
import 'package:pacefin/widgets/home_news_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    HomeNewsCardModel homeNewsCardModel = const HomeNewsCardModel(
      date: "2019-07-03",
      site: "CNN",
      subtitle:
          "Boeing will pay out \$100 million to help support the families and communities of the 399 people who died in two Max crashes last year.",
      title: "Boeing dedicates \$100 million to victims of 737 Max crashes",
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.grey,
        appBar: const CustomAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              HomeNewsCard(
                homeNewsCardModel: homeNewsCardModel,
              ),
              HomeNewsCard(
                homeNewsCardModel: homeNewsCardModel,
              ),
              HomeNewsCard(
                homeNewsCardModel: homeNewsCardModel,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
