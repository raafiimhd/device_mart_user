import 'package:device/domain/core/color/colors.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:flutter/material.dart';

class StackImageContainer extends StatelessWidget {
  const StackImageContainer({
    super.key,
    required this.images,
  });

  final Map<String, dynamic>? images;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sWidth * 0.19,
      width: sWidth * 0.17,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              images!['urls'].first,
            ),
          ),
          boxShadow: [
            BoxShadow(
                color: kBlack.withOpacity(0.8),
                blurRadius: 1.5,
                offset: const Offset(0, 2))
          ],
          color: kWhite,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
    );
  }
}
