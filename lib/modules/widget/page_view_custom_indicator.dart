import 'package:flutter/material.dart';

class PageViewCustomIndicator extends StatelessWidget {
  const PageViewCustomIndicator({
    this.marginEnd=0,
    required this.isCurentPage,
    super.key,
  });
  final double marginEnd;
  final bool isCurentPage;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: marginEnd),
      height: 10,
      width: isCurentPage?40:10,
      decoration: BoxDecoration(
        color:isCurentPage? const Color(0xFFF35C56):const Color(0xFFE4E4E6),
        borderRadius: BorderRadius.circular(20),

      ),
    );
  }
}