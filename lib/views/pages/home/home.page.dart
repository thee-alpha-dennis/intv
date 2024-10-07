import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interview/views/widgets/cards/popular-courses.listitem.dart';
import 'package:interview/views/widgets/cards/status-type.dart';
import 'package:interview/views/widgets/cards/topper-list.item.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../constants/test-data.dart';
import '../../../utils/ui-spacer.dart';
import '../../widgets/banner-carousel.dart';
import '../../widgets/cards/all-courses.listitem.dart';
import '../../widgets/cards/welcome.card.dart';
import '../../widgets/custom_image.view.dart';
import '../../widgets/type.vertical_list_item.dart';

class EmptyWelcome extends StatefulWidget {
  const EmptyWelcome({
    Key? key,
  }) : super(key: key);

  @override
  State<EmptyWelcome> createState() => _EmptyWelcomeState();
}

class _EmptyWelcomeState extends State<EmptyWelcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: VStack(
          [
            const SafeArea(
              child: WelcomeIntroView(),
            ),
            StatusType(),
            BannerCarousel(
              banners: banners,
              itemRadius: 10.0,
              viewportFraction: 0.9,
              padding: 1,
              bannerHeight: 155.0,
            ).py(10),
            SizedBox(
              height: 168,
              child: AnimationLimiter(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: testVendorTypes.length,
                  itemBuilder: (context, index) {
                    final vendorType = testVendorTypes[index];
                    return TypeVerticalListItem(
                      vendorType,
                      onPressed: () {},
                    ).p12();
                  },
                ).p12(),
              ),
            ),
            "Toppers of ABC"
                .text
                .textStyle(
                  GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                )
                .lineHeight(2)
                .color(Colors.black)
                .make()
                .px(20),
            CarouselSlider(
              options: CarouselOptions(
                autoPlayCurve: Curves.easeInOutBack,
                clipBehavior: Clip.antiAlias,
                autoPlay: false,
                viewportFraction: 1,
                autoPlayInterval: const Duration(seconds: 6),
                initialPage: 1,
                autoPlayAnimationDuration: const Duration(seconds: 2),
                height: 190,
              ),
              items: const [
                TopperListItem(title: 'NEET Toppers of Rajbir Institute'),
                TopperListItem(title: '10th Class Toppers of Rajbir Institute'),
              ],
            ).pOnly(bottom: 20),
            HStack([
              "Popular Courses"
                  .text
                  .textStyle(
                    GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  )
                  .lineHeight(2)
                  .color(Colors.black)
                  .make()
                  .px(20),
              const Spacer(),
              "View All"
                  .text
                  .textStyle(
                    GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  )
                  .lineHeight(2)
                  .color(Colors.red)
                  .make()
                  .px(20),
            ]).py(5),
            CarouselSlider(
              options: CarouselOptions(
                autoPlayCurve: Curves.easeInOutBack,
                clipBehavior: Clip.antiAlias,
                autoPlay: false,
                viewportFraction: 1,
                autoPlayInterval: const Duration(seconds: 6),
                initialPage: 1,
                autoPlayAnimationDuration: const Duration(seconds: 2),
                height: 190,
              ),
              items: const [
                PCListItem(
                    imageUrl:
                        'https://s3-alpha-sig.figma.com/img/2e18/0efc/62b6764001210e08709559a35bee5397?Expires=1729468800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=WP3AQG1Ac0zOQ4NYqaApR-q9aJz6DLheTC23hDtWP~DGjIu9x-B~KxPzz5~JdpYAv0r~yq-OtlRxSaJU7dn2CZ71E6UpiVFcIKO8iaialpfQ-Y1T5LdCXqP54GvhujaR5oUV2-1LCMHqzNJkqVL~a3tOmBtiB6h8UFAY6DtdguIam32QF2IKgU0XaB4ATy0J8TkZpr-s3AuDE6lOobOdnjm7t~F5pfRhYE1zYBvHKWYtmuv~JdlWsevngMtvLFQnYsOIQ2tv3SkPD9X1O3CNetaPyDUWHnPnwVnkggN7lIce0Vwe1hrb~FBSt13WAzXaQB6gAVIxAzSrKClV1LbtKQ__',
                    title: 'Hinglish',
                    description: 'Class 10th - Mathematics'),
                PCListItem(
                    imageUrl:
                        'https://s3-alpha-sig.figma.com/img/2e18/0efc/62b6764001210e08709559a35bee5397?Expires=1729468800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=WP3AQG1Ac0zOQ4NYqaApR-q9aJz6DLheTC23hDtWP~DGjIu9x-B~KxPzz5~JdpYAv0r~yq-OtlRxSaJU7dn2CZ71E6UpiVFcIKO8iaialpfQ-Y1T5LdCXqP54GvhujaR5oUV2-1LCMHqzNJkqVL~a3tOmBtiB6h8UFAY6DtdguIam32QF2IKgU0XaB4ATy0J8TkZpr-s3AuDE6lOobOdnjm7t~F5pfRhYE1zYBvHKWYtmuv~JdlWsevngMtvLFQnYsOIQ2tv3SkPD9X1O3CNetaPyDUWHnPnwVnkggN7lIce0Vwe1hrb~FBSt13WAzXaQB6gAVIxAzSrKClV1LbtKQ__',
                    title: 'Hinglish',
                    description: 'Class 10th - Mathematics'),
              ],
            ).pOnly(bottom: 20),
            HStack([
              "All Courses"
                  .text
                  .textStyle(
                    GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  )
                  .lineHeight(2)
                  .color(Colors.black)
                  .make()
                  .px(20),
              const Spacer(),
              "View All"
                  .text
                  .textStyle(
                    GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  )
                  .lineHeight(2)
                  .color(Colors.red)
                  .make()
                  .px(20),
            ]).py(5),
            CarouselSlider(
              options: CarouselOptions(
                autoPlayCurve: Curves.easeInOutBack,
                clipBehavior: Clip.antiAlias,
                autoPlay: false,
                viewportFraction: 1,
                autoPlayInterval: const Duration(seconds: 6),
                initialPage: 1,
                autoPlayAnimationDuration: const Duration(seconds: 2),
                height: 190,
              ),
              items: const [
                AllCoursesListItem(
                    imageUrl:
                        'https://s3-alpha-sig.figma.com/img/2e18/0efc/62b6764001210e08709559a35bee5397?Expires=1729468800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=WP3AQG1Ac0zOQ4NYqaApR-q9aJz6DLheTC23hDtWP~DGjIu9x-B~KxPzz5~JdpYAv0r~yq-OtlRxSaJU7dn2CZ71E6UpiVFcIKO8iaialpfQ-Y1T5LdCXqP54GvhujaR5oUV2-1LCMHqzNJkqVL~a3tOmBtiB6h8UFAY6DtdguIam32QF2IKgU0XaB4ATy0J8TkZpr-s3AuDE6lOobOdnjm7t~F5pfRhYE1zYBvHKWYtmuv~JdlWsevngMtvLFQnYsOIQ2tv3SkPD9X1O3CNetaPyDUWHnPnwVnkggN7lIce0Vwe1hrb~FBSt13WAzXaQB6gAVIxAzSrKClV1LbtKQ__',
                    title: 'Hinglish',
                    description: 'ARAMBH - NEET DROPPER BATCH'),
                AllCoursesListItem(
                    imageUrl:
                        'https://s3-alpha-sig.figma.com/img/2e18/0efc/62b6764001210e08709559a35bee5397?Expires=17'
                            '29468800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=WP3AQG1Ac0zOQ4NYqaApR-q9aJz6DLheTC23hDtWP~DGjIu9x-B~KxPzz5~JdpYAv0r~yq-OtlRxSaJU7dn2CZ71E6UpiVFcIKO8iaialpfQ-Y1T5LdCXqP54GvhujaR5oUV2-1LCMHqzNJkqVL~a3tOmBtiB6h8UFAY6DtdguIam32QF2IKgU0XaB4ATy0J8TkZpr-s3AuDE6lOobOdnjm7t~F5pfRhYE1zYBvHKWYtmuv~JdlWsevngMtvLFQnYsOIQ2tv3SkPD9X1O3CNetaPyDUWHnPnwVnkggN7lIce0Vwe1hrb~FBSt13WAzXaQB6gAVIxAzSrKClV1LbtKQ__',
                    title: 'Class 10th - Mathematics',
                    description: 'ARAMBH - NEET DROPPER BATCH'),
              ],
            ).pOnly(bottom: 20),
            HStack(
              [
                VStack(
                  [
                    "Refer & Earn"
                        .text.textStyle(
                        GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),)
                        .maxLines(2)
                        .ellipsis
                        .color(Colors.black)
                        .make(),
                    "Cashback & Rewards"
                        .text.textStyle(
                        GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                        ),)
                        .xl
                        .extraBold
                        .color(Colors.black)
                        .make(),
                    "Invite Your Friends & Get Up to ₹500 After Registration."
                        .text.textStyle(
                        GoogleFonts.montserrat(
                          fontSize: 14,
                        ),)
                        .sm
                        .medium
                        .maxLines(3)
                        .ellipsis
                        .color(Colors.black)
                        .make().pOnly(bottom: 8),
                    GestureDetector(
                      onTap: () => {},
                      child: "Invite"
                          .text
                          .textStyle(
                        GoogleFonts.montserrat(
                          fontSize: 14,
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
                ).expand(),
                HStack(
                  [
                    CustomImage(
                            imageUrl:
                                "https://s3-alpha-sig.figma.com/img/9a59/4c40/ec903f9d32f649b02ecef0c38ab03357?Expires=1729468800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=lIPRO3HHXqYwExtNMgIS~ZKcIcCEwRGbokVvyB-IbC3XeouyN6pRSG421k4qUx14Lov22ANOrY9OHoYOt1cOxta5hDnQR2idxJoJAzyjzUD5yfKRB~qHNqrzu~MS8p8jhbK4fMwXxbiE5lvuelmiSU5TYC4Ct1NoD33lSnLaHZMdv2VjnEKkNp0hG9TSTKtDIX59GTJ6qDyORTshkv0S1bkLqU2b1ASL3ThB18DkWGbKPOUJzVMNzRCsRJrVhaH9r6NN6OJEPu~9Hac83wpe4DW1-pSvTgrc3A6nG9DDHy4nwZ2xTqP6moQpfCjR4vgkPJSqJGx3QgN-FcWImjjyOQ__")
                        .wh(100, 100),
                    UiSpacer.hSpace(),
                  ],
                ),
              ],
            )
                .px(20)
                .py(12)
                .box
                .roundedSM
                .outerShadowXl
                .color(Color(0xffFFEDED))
                .make()
          ],
        ),
      ),
    );
  }
}
