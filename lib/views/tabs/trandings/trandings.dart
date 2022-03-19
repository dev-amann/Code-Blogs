import 'dart:io';

import 'package:code_blogs/utils/colors.dart';
import 'package:code_blogs/utils/dimension.dart';
import 'package:code_blogs/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class TrendingScreen extends StatefulWidget {
  const TrendingScreen({Key? key}) : super(key: key);

  @override
  _TrendingScreenState createState() => _TrendingScreenState();
}

class _TrendingScreenState extends State<TrendingScreen> {
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
          Align(
            alignment: Alignment.topLeft,
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      height: Dimens.searchFieldHeight,
                      child: Card(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              Dimens.searchFieldHeight / 4),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(Dimens.paddingSizeDefault),
                          child: Center(
                            child: Text(
                              "Trending",
                              style: regularTextStyle,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Dimens.searchFieldHeight,
                      child: Card(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              Dimens.searchFieldHeight / 4),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(Dimens.paddingSizeDefault),
                          child: Center(
                            child: Text(
                              "Location",
                              style: regularTextStyle,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Dimens.searchFieldHeight,
                      child: Card(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              Dimens.searchFieldHeight / 4),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(Dimens.paddingSizeDefault),
                          child: Center(
                            child: Text(
                              "Top 10",
                              style: regularTextStyle,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Dimens.searchFieldHeight,
                      child: Card(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              Dimens.searchFieldHeight / 4),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(Dimens.paddingSizeDefault),
                          child: Center(
                            child: Text(
                              "Most Loved",
                              style: regularTextStyle,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Dimens.searchFieldHeight,
                      child: Card(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              Dimens.searchFieldHeight / 4),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(Dimens.paddingSizeDefault),
                          child: Center(
                            child: Text(
                              "Verified",
                              style: regularTextStyle,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Dimens.searchFieldHeight,
                      child: Card(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              Dimens.searchFieldHeight / 4),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(Dimens.paddingSizeDefault),
                          child: Center(
                            child: Text(
                              "Hindi",
                              style: regularTextStyle,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Dimens.searchFieldHeight,
                      child: Card(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              Dimens.searchFieldHeight / 4),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(Dimens.paddingSizeDefault),
                          child: Center(
                            child: Text(
                              "Saved",
                              style: regularTextStyle,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          )
        ]));
  }
}
