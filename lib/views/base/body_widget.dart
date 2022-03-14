import 'dart:io';

import 'package:code_blogs/utils/dimension.dart';
import 'package:flutter/material.dart';

class BodyWidget extends StatelessWidget {
  final Widget child;
  final double topMarginIos;
  final double topMarginAnd;

  const BodyWidget(
      {Key? key,
      required this.child,
      required this.topMarginIos,
      required this.topMarginAnd})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: Platform.isIOS ? topMarginIos : topMarginAnd,
        left: Dimens.paddingSizeSmall,
        right: Dimens.paddingSizeSmall,
      ),
      child: child,
    );
  }
}
