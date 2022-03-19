import 'dart:io';

import 'package:code_blogs/models/feed/feed_model.dart';
import 'package:code_blogs/utils/colors.dart';
import 'package:code_blogs/utils/dimension.dart';
import 'package:code_blogs/utils/strings.dart';
import 'package:code_blogs/utils/styles.dart';
import 'package:code_blogs/views/base/body_widget.dart';
import 'package:code_blogs/views/base/custom_image.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: CustomColors.cardColor.withOpacity(0.1),
        padding: EdgeInsets.only(
          top: Platform.isIOS
              ? Dimens.marginSizeTopLarge
              : Dimens.marginSizeTopDefault,
          left: Dimens.paddingSizeSmall,
          right: Dimens.paddingSizeSmall,
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(children: [
          BodyWidget(
              topMarginAnd: 0.0,
              topMarginIos: 0.0,
              child: SingleChildScrollView(
                  child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomCircleImage(
                      radius: 60,
                      image: feedList.elementAt(1).userPic!,
                      imageHeight: 120,
                      imageWidth: 120,
                      boxFit: BoxFit.cover,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      feedList.elementAt(1).username!,
                      style: regularTextStyle,
                    )
                  ],
                )
              ])))
        ]));
  }
}
