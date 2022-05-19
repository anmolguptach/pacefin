import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pacefin/constants/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.blackColor,
      title: Text(
        "HEADLINES",
        style: GoogleFonts.robotoSlab(
          fontWeight: FontWeight.bold,
          fontSize: 29,
        ),
      ),
      centerTitle: true,
    );
  }
}
