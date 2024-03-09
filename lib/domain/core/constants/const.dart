import 'package:device/domain/core/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(2);
late final double sHeight;
late final double sWidth;
void sizeFinder(BuildContext context) {
  final size = MediaQuery.of(context).size;
  sHeight = size.height;
  sWidth = size.width;
}

const TextStyle headStyle = TextStyle(fontWeight: FontWeight.w700);
const sWidth5 = SizedBox(
  width: 5,
);

const kRadius5 = Radius.circular(5);
const kHeightFive = SizedBox(
  height: 5,
);
const kHeightTen = SizedBox(
  height: 10,
);
const kHeightTwenty = SizedBox(
  height: 20,
);
const kHeight50 = SizedBox(
  height: 50,
);
const kHeight147 = SizedBox(
  height: 147,
);
const kHeight400 = SizedBox(
  height: 400,
);
const kWidth20 = SizedBox(
  width: 20,
);
const kWidth50 = SizedBox(
  width: 50,
);
const kWidth70 = SizedBox(
  width: 70,
);
const kWidth120 = SizedBox(
  width: 120,
);
const kWidth100 = SizedBox(
  width: 100,
);
TextStyle priceStyle =
    TextStyle(fontWeight: FontWeight.w700, fontSize: sWidth * 0.050);
TextStyle priceStyleCross = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: sWidth * 0.040,
    color: kBlack.withOpacity(0.7),
    decoration: TextDecoration.lineThrough);
TextStyle kronOne(
    {double fontSize = 0.035,
    FontWeight fontWeight = FontWeight.normal,
    Color color = kBlack}) {
  return GoogleFonts.kronaOne(
      fontSize: fontSize * sWidth, fontWeight: fontWeight, color: color);
}

TextStyle buttonStyleQuantity = TextStyle(
    fontWeight: FontWeight.w700, fontSize: sWidth * 0.050, color: kWhite);
ButtonStyle elevatedButtonStyleBlack = ElevatedButton.styleFrom(
  side: const BorderSide(color: kWhite),
  backgroundColor: kBlack,
  foregroundColor: kWhite,
  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(kRadius5)),
);
ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
  side: const BorderSide(color: kWhite),
  fixedSize: Size(sWidth * 0.35, sWidth * 0.10),
  backgroundColor: kBlack,
  foregroundColor: kWhite,
  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(kRadius5)),
);
const String errorMsg = 'Something went wrong, please try again';
const boxborder = BoxDecoration(
    border: Border(
        top: BorderSide(),
        right: BorderSide(),
        left: BorderSide(),
        bottom: BorderSide()),
    borderRadius: BorderRadius.all(kRadius5),
    color: kBlack);

class Boldtext18 extends StatelessWidget {
  const Boldtext18({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w800,
        fontFamily: 'Lora',
      ),
    );
  }
}
