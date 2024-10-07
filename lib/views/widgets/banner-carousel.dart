/*
  Author : (Dennis Ongong'a - Kenya)
*/
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../models/banner.dart';
import 'cards/banner-list-tem.dart';

class BannerCarousel extends StatefulWidget {
  final List<BannerModel> banners;
  final double itemRadius;
  final double viewportFraction;
  final double padding;
  final double bannerHeight;

  const BannerCarousel({
    Key? key,
    required this.banners,
    this.itemRadius = 0.0,
    this.viewportFraction = 1.0,
    this.padding = 8.0,
    this.bannerHeight = 200.0,
  }) : super(key: key);

  @override
  _BannerCarouselState createState() => _BannerCarouselState();
}

class _BannerCarouselState extends State<BannerCarousel> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.banners.isNotEmpty,
      child: Padding(
        padding: EdgeInsets.all(widget.padding),
        child: VStack(
          [
            CarouselSlider(
              options: CarouselOptions(
                autoPlayCurve: Curves.easeInOutBack,
                clipBehavior: Clip.antiAlias,
                viewportFraction: widget.viewportFraction,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 6),
                initialPage: 1,
                autoPlayAnimationDuration: const Duration(seconds: 2),
                height: widget.bannerHeight,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              items: widget.banners.map((banner) {
                return BannerListItem(
                  radius: widget.itemRadius,
                  imageUrl: banner.imageUrl,
                  onPressed: () {},
                  title: banner.title,
                  description: banner.description,
                  color: banner.color,
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
