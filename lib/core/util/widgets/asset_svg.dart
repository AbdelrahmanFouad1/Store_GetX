import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class MySvg extends StatelessWidget {
  final String imagePath;
  final Color? color;
  final double? size;

  const MySvg({
    Key? key,
    required this.imagePath,
     this.color ,
     this.size ,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      imagePath,
      color: color,
      width: size,
      height: size,
    );
  }
}
