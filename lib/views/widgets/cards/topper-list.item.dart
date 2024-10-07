import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class TopperListItem extends StatelessWidget {
  const TopperListItem({
    required this.title,
    this.radius = 4,
    Key? key,
  }) : super(key: key);

  final String title;
  final double radius;

  Widget _buildStudentProfile(
      String imageUrl, String studentName, String grade, double radius) {
    return VStack(
      [
        // Student image
        ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.cover,
            width: 58,
            height: 65,
          ),
        ),
        8.heightBox,
        studentName.text
            .textStyle(GoogleFonts.montserrat(
              fontSize: 12,
              fontWeight: FontWeight.w800,
            ))
            .bold
            .makeCentered(),
        grade.text
            .textStyle(GoogleFonts.montserrat(
              fontSize: 12,
              fontWeight: FontWeight.w800,
            ))
            .green500
            .bold
            .makeCentered(),
      ],
    ).p8();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey.shade200)),
      padding: const EdgeInsets.all(16.0),
      child: VStack(
        [
          // Title
          title.text.align(TextAlign.left)
              .size(14)
              .textStyle(
                GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                ),
              )
              .black
              .make(),

          16.heightBox,

          HStack(
            [
              _buildStudentProfile(
                  'https://s3-alpha-sig.figma.com/img/03a6/9e3a/f2677c18576441e05e66092043930940?Expires=1729468800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=RMNpIXH8QkDeo5ge7woLXHS135dV1mN4GT4T6SVwve3xKN-j8lCvfcDsdRiiE9TigznmvdJju6VxRHt0Lyj-WiSZwCyygGxxJfj4QGf2~nS4J33gGHhpiYBhpbO5u01AmzQpvFVhvmhXG6-ExHNH5~TlM59Q7loJ1lgd5xU95ueEQKa7QTKNUE5AOmZ-Rq-PB0ximgLQvaTALciPMl-oxAhk8LYy~GM37GP2ZlhEPv5Se879z-wCHySp2Qgi3-akpfRcA1lGDjFT69Zovk328yuQaPSdU~b7RushLdtFn0BTcVqyq2SscvWZQSYT7fA4UolWsdr~7V4erRPBOTzbhA__',
                  "Shree",
                  "720/720",
                  radius),
              _buildStudentProfile(
                  'https://s3-alpha-sig.figma.com/img/a992/9be2/bca2027487422caf8d95f490f3970b1d?Expires=1729468800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=EQaW3cHeJFW8bxECkB7JaXQi7iepqlH8lEUk3BjyUMlB060LxTPqvF9hcR~~hDAgyO425YPwt-s3L-NOyGioDAijyf2iyjnEx-yZoRyIMnMxUakn2wC2oHRTxnuD8dVZZieiQGKXXvANZ0oXjG0uA4Xo9j90hEbBjXby7eMqlvcPfEdde2GX4p2NAZ3Lbv7LcNm4AOKb7~WZhbJOkkXwQEppKmasKlhn2tUgHUByJhFvJmMuNYL5d-qC5EkWjSIuz093Jox-9PTfURSQSYknYHlTEFLeJys6EKTGTWAEU1EDapW8KPu9spZHEL3h~Rzx58bOQ51GAYZnBraYmAU34w__',
                  "Shree",
                  "720/720",
                  radius),
              _buildStudentProfile(
                  'https://s3-alpha-sig.figma.com/img/fa32/4aff/3a409e39791c2257c926195f1aed58de?Expires=1729468800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=kEy2~k3GjAEvXleeFqV7QgHgR0NuUV28ZDOHsbUBBn3NDbTBOvkSarIyffUQRuwNkc6XRYmovZnqaC0HnpYAwfv31eUKNERfAYI-2NTS7y2~VO~2pXxHC065dTZEW4EDfvjEHqazsc6ZDnk54tPg01xZzNLNvuIabGDxGOMAc75hdf3aGDvMPe1n3g~4sIdBVZ-8VCAVooN8~kC2x6wkC5x9x4qtm6Ej4TN8xPBs7ufP4tJhVqIJP4kyoN~gNWYh~uasNKJu2GmCYP8B0hZcq8jYCaVv67MMC5C3f5b38t0G0uNmhAZWc-OOnmtpSeVbj8~FubmSEmcLZkEYrKX2CQ__',
                  "Shree",
                  "720/720",
                  radius),
              _buildStudentProfile(
                  'https://s3-alpha-sig.figma.com/img/90ca/8c8b/db46d6550eb981b667eaa709275fe010?Expires=1729468800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=RVxgko0k5g0gH4hKz-PohS~hOMtv3fmKzgh-ZHkNVY3N-yFDCVCatLHpdZRYBSupY2FW03Km7rumytm-0LEOXiY7p4f93abzAS9Kni9ebLsi9y3-I~3meRSIcuiKHG-1HvDTZs-lIZolksWnITZTC5j-DUrZ1-eEHPhneVyB-jXMmVJQcX5GxD~44a~gZWfUlneNUuBkbmM1GBd6pmm4wKRl9mOvJ2LGgBdeBk8R3EuZGqoi2ubUZERDhZr7mhCpl3HJnhtrbCgFs5tLJK4PIfSNGo6WvUkhqNF4XZyCqQXe5OW0LL~U0QCxR7se5JgC7vjD7tZTS9YHiNpmeqGNHA__',
                  "Shree",
                  "720/720",
                  radius),
            ],
            alignment:
                MainAxisAlignment.center
          ),
        ],
        alignment: MainAxisAlignment.center
      ),
    ).px(15);
  }
}
