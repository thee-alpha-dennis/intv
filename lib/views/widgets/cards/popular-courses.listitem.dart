import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class PCListItem extends StatelessWidget {
  const PCListItem({
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
      margin: EdgeInsets.symmetric(horizontal: noMargin ? 0.0 : 5.0),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(radius),
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.cover,
              width: 300,
              height: 120,
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: title.text
                  .size(12)
                  .textStyle(
                GoogleFonts.montserrat(
                  fontWeight: FontWeight.w800,
                ),
              )
                  .black
                  .make(),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                description.text.center
                    .size(16)
                    .textStyle(
                  GoogleFonts.montserrat(
                    fontWeight: FontWeight.w800,
                  ),
                )
                    .black
                    .make(),
                4.heightBox
              ],
            ),
          ),
        ],
      ),
    );
  }

}
