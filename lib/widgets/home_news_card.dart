import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pacefin/constants/colors.dart';
import 'package:pacefin/model/home_card_model.dart';
import 'package:pacefin/screens/news_page.dart';

class HomeNewsCard extends StatelessWidget {
  final HomeNewsCardModel homeNewsCardModel;
  const HomeNewsCard({Key? key, required this.homeNewsCardModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => NewsPage(
                homeNewsCardModel: homeNewsCardModel,
              ),
            ),
          );
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.28,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: const DecorationImage(
              image: AssetImage("assets/aviation.jpeg"),
              fit: BoxFit.fill,
            ),
            boxShadow: [
              BoxShadow(
                color: AppColor.blackColor, //New
                blurRadius: 1.0,
              )
            ],
          ),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      AppColor.blackColor,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      homeNewsCardModel.title,
                      style: GoogleFonts.robotoSlab(
                        color: AppColor.whitef2,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Text(
                          homeNewsCardModel.site,
                          style: GoogleFonts.robotoSlab(
                            color: AppColor.greyba,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        Text(
                          homeNewsCardModel.date,
                          style: GoogleFonts.robotoSlab(
                            color: AppColor.greyba,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

