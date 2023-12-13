import 'package:flutter/widgets.dart';

abstract class AppSpacings {
  /// EdgeInsets all
  static const a4 = EdgeInsets.all(4);
  static const a8 = EdgeInsets.all(8);
  static const a16 = EdgeInsets.all(16);
  static const a24 = EdgeInsets.all(24);

  /// EdgeInsets horizontal
  static const h4 = EdgeInsets.symmetric(horizontal: 4);
  static const h8 = EdgeInsets.symmetric(horizontal: 8);
  static const h16 = EdgeInsets.symmetric(horizontal: 16);
  static const h24 = EdgeInsets.symmetric(horizontal: 24);

  /// EdgeInsets vertical
  static const v4 = EdgeInsets.symmetric(vertical: 4);
  static const v8 = EdgeInsets.symmetric(vertical: 8);
  static const v16 = EdgeInsets.symmetric(vertical: 16);
  static const v24 = EdgeInsets.symmetric(vertical: 24);

  /// EdgeInsets only
  /// top
  static const t4 = EdgeInsets.only(top: 4);
  static const t8 = EdgeInsets.only(top: 8);
  static const t16 = EdgeInsets.only(top: 16);
  static const t24 = EdgeInsets.only(top: 24);

  /// bottom
  static const b4 = EdgeInsets.only(bottom: 4);
  static const b8 = EdgeInsets.only(bottom: 8);
  static const b16 = EdgeInsets.only(bottom: 16);
  static const b24 = EdgeInsets.only(bottom: 24);

  /// left
  static const l4 = EdgeInsets.only(left: 4);
  static const l8 = EdgeInsets.only(left: 8);
  static const l16 = EdgeInsets.only(left: 16);
  static const l24 = EdgeInsets.only(left: 24);

  /// right
  static const r4 = EdgeInsets.only(right: 4);
  static const r8 = EdgeInsets.only(right: 8);
  static const r16 = EdgeInsets.only(right: 16);
  static const r24 = EdgeInsets.only(right: 24);

  /// SizedBox
  /// height
  static const sbh4 = SizedBox(height: 4);
  static const sbh8 = SizedBox(height: 8);
  static const sbh16 = SizedBox(height: 16);
  static const sbh24 = SizedBox(height: 24);
  static const sbh32 = SizedBox(height: 32);
  static const sbh48 = SizedBox(height: 48);
  static const sbh60 = SizedBox(height: 60);
  static const sbh72 = SizedBox(height: 72);

  /// width
  static const sbw4 = SizedBox(width: 4);
  static const sbw8 = SizedBox(width: 8);
  static const sbw16 = SizedBox(width: 16);
  static const sbw24 = SizedBox(width: 24);
  static const sbw32 = SizedBox(width: 32);

  /// Border Radius
  static const borderRadiusA4 = BorderRadius.all(Radius.circular(4));
  static const borderRadiusA8 = BorderRadius.all(Radius.circular(8));
  static const borderRadiusA16 = BorderRadius.all(Radius.circular(16));

  const AppSpacings._();
}
