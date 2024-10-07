/*
  Author : (Dennis Ongong'a - Kenya)
*/
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class StatusType extends StatefulWidget {
  StatusType({super.key});

  @override
  State<StatusType> createState() => _StatusTypeState();
}

bool isOnline = false;

class _StatusTypeState extends State<StatusType> {
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: HStack(
        [
          // Online text
          "Online"
              .text
              .textStyle(
                GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              )
              .center
              .color(isOnline ? Colors.white : Colors.black26)
              .make()
              .box
              .rounded
              .color(isOnline ? Colors.black : Colors.transparent)
              .p12
              .make()
              .expand(),

          // Offline text
          "Offline"
              .text
              .textStyle(
                GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              )
              .center
              .color(!isOnline ? Colors.white : Colors.black26)
              .make()
              .box
              .rounded
              .color(!isOnline ? Colors.black : Colors.transparent)
              .p12
              .make()
              .expand()
        ],
      ),
    )
        .rounded
        .border(color: Colors.grey.shade100, width: 1)
        .color(Colors.white)
        .make()
        .px(16)
        .onTap(
      () {
        setState(() {
          isOnline = !isOnline;
        });
      },
    );
  }
}
