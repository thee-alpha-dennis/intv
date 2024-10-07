import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../models/type.dart';
import 'custom_image.view.dart';

class TypeVerticalListItem extends StatelessWidget {
  const TypeVerticalListItem(
    this.type, {
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final Types type;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredList(
      position: type.id,
      duration: const Duration(milliseconds: 375),
      child: SlideAnimation(
        verticalOffset: 40.0,
        child: FadeInAnimation(
          child: InkWell(
            onTap: () => onPressed(),
            child: VStack(
              [
                CustomImage(
                  imageUrl: type.logo,
                  boxFit: BoxFit.cover,
                  height: 50,
                  width: 50,
                ).p8(),
                type.name.text
                    .textStyle(
                      GoogleFonts.montserrat(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                    .center
                    .color(Colors.black)
                    .makeCentered(),
              ],
            ).p16().centered(),
          ).box.withRounded(value: 15).outerShadow.color(Colors.white).make(),
        ),
      ),
    );
  }
}
