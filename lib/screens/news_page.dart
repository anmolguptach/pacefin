import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pacefin/constants/colors.dart';
import 'package:pacefin/model/home_card_model.dart';

class NewsPage extends StatelessWidget {
  final HomeNewsCardModel homeNewsCardModel;

  const NewsPage({
    Key? key,
    required this.homeNewsCardModel,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("assets/aviation.jpeg"),
            fit: BoxFit.cover,
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
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    homeNewsCardModel.title,
                    style: GoogleFonts.robotoSlab(
                      color: AppColor.whitef2,
                      fontSize: 29,
                    ),
                  ),
                  const SizedBox(
                    height: 64,
                  ),
                  Row(
                    children: [
                      Text(
                        homeNewsCardModel.site,
                        style: GoogleFonts.robotoSlab(
                          color: AppColor.greyba,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 24,
                      ),
                      Text(
                        homeNewsCardModel.date,
                        style: GoogleFonts.robotoSlab(
                          color: AppColor.greyba,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    homeNewsCardModel.subtitle,
                    style: GoogleFonts.robotoSlab(
                      color: AppColor.whitef2,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 42,
              left: 24,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: CircleAvatar(
                  radius: 21,
                  backgroundColor: AppColor.grey,
                  child: const Icon(
                    Icons.arrow_back_outlined,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
