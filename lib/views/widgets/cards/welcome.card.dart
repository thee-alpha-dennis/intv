import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interview/constants/app-images.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../constants/test-data.dart';
import '../../../utils/ui-spacer.dart';
import '../custom_image.view.dart';

class WelcomeIntroView extends StatelessWidget {
  const WelcomeIntroView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: Alignment.centerLeft,
      child: VStack(
        [
          HStack(
            [
              ClipOval(
                child: CustomImage(
                  imageUrl: mockUser.photo,
                  boxFit: BoxFit.fill,
                  height: 42,
                  width: 42,
                ),
              ),
              UiSpacer.hSpace(12),
              VStack(
                [
                  //name
                  VStack([
                    HStack(
                      [
                        "Hi, "
                            .text
                            .textStyle(
                              GoogleFonts.montserrat(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                height: 19.2 / 16,
                                color: Colors.black,
                              ),
                            )
                            .make(),
                        mockUser.name.text
                            .textStyle(
                              GoogleFonts.montserrat(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                height: 19.2 / 16,
                                color: Colors.blue.shade700,
                              ),
                            )
                            .make(),
                      ],
                    ),
                  ]),
                  //intro
                  fullIntroText.text
                      .textStyle(
                        GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          height: 1.2,
                          textBaseline: TextBaseline.alphabetic,
                        ),
                      )
                      .align(TextAlign.left)
                      .make()
                ],
              ),
              VxBadge(
                count: 1,
                color: Colors.red,
                size: 16, // Badge size
                textStyle: const TextStyle(color: Colors.white, fontSize: 12),
                child: Image.asset(
                  AppImages.bell,
                  height: 25,
                  width: 25,
                ),
              ).pOnly(left: 50),
            ],
            alignment: MainAxisAlignment.spaceEvenly,
            crossAlignment: CrossAxisAlignment.center,
          ).pOnly(bottom: 10),
        ],
      ),
    ).pOnly(left: 16, right: 16, top: 16, bottom: 15);
  }
}
