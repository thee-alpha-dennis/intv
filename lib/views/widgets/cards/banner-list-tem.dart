import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class BannerListItem extends StatelessWidget {
  const BannerListItem({
    required this.imageUrl,
    required this.title,
    required this.description,
    this.onPressed,
    this.radius = 4,
    this.noMargin = false,
    Key? key,
    this.color,
  }) : super(key: key);

  final String imageUrl;
  final String title;
  final String description;
  final double radius;
  final bool noMargin;
  final Function? onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 120,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
      margin: EdgeInsets.symmetric(horizontal: noMargin ? 0.0 : 5.0),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                title.text
                    .size(21)
                    .textStyle(
                  GoogleFonts.montserrat(
                    fontWeight: FontWeight.w800,
                  ),
                )
                    .black
                    .make(),
                4.heightBox,
                description.text
                    .size(14)
                    .textStyle(
                  GoogleFonts.montserrat(
                    fontWeight: FontWeight.w400,
                  ),
                )
                    .black
                    .make(),
                8.heightBox,
                GestureDetector(
                  onTap: () => onPressed?.call(),
                  child: "Join"
                      .text
                      .textStyle(
                    GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                    ),
                  )
                      .lineHeight(3)
                      .color(Colors.white)
                      .make()
                      .box
                      .withRounded(value: 5)
                      .color(Colors.black)
                      .px32
                      .make(),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 8,
            right: 8,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(radius),
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                fit: BoxFit.cover,
                width: 100,
                height: 80,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
