import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgIcon extends StatelessWidget {
  final String iconName;
  final double size;
  final Color? color;

  const SvgIcon({
    Key? key,
    required this.iconName,
    this.size = 24,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: SvgPicture.asset(
        'assets/icons/$iconName.svg',
        color: color ?? Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
