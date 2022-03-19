import 'dart:io';

import 'package:code_blogs/models/feed/feed_model.dart';
import 'package:code_blogs/utils/colors.dart';
import 'package:code_blogs/utils/dimension.dart';
import 'package:code_blogs/utils/strings.dart';
import 'package:code_blogs/utils/styles.dart';
import 'package:code_blogs/views/base/body_widget.dart';
import 'package:code_blogs/views/base/custom_image.dart';
import 'package:flutter/material.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  List<FeedModel> postList = [];

  @override
  void initState() {
    super.initState();
      Iterable<FeedModel> reverse = feedList.reversed;
      postList = reverse.toList();
  }

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
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: Dimens.searchFieldWidth,
              height: Dimens.searchFieldHeight,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Str.findBlogPerson,
                          style: regularTextStyle,
                        ),
                        const Icon(Icons.search)
                      ]),
                ),
              ),
            ),
          ),
          BodyWidget(
            topMarginAnd: Dimens.marginSizeDefault * 2,
            topMarginIos: Dimens.marginSizeTopLarge,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: Dimens.marginSizeSmall),
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      Str.discover,
                      style: regularTextStyle.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: Dimens.textSizeLarge),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: Dimens.whatsNewHeight,
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: feedList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding:
                                EdgeInsets.only(right: Dimens.paddingSizeSmall),
                            child: Column(
                              children: [
                                CustomCacheImage(
                                  imageHeight: Dimens.whatsNewImageHeight,
                                  imageWidth: Dimens.whatsNewWidth,
                                  boxFit: BoxFit.cover,
                                  image: feedList.elementAt(index).postImage!,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: Dimens.paddingSizeSmall,
                                      horizontal: Dimens.paddingSizeSmall),
                                  width: Dimens.whatsNewWidth,
                                  color: CustomColors.cardColor,
                                  child: Row(
                                    children: [
                                      CustomCircleImage(
                                        radius: 18,
                                        image:
                                            feedList.elementAt(index).userPic!,
                                        imageHeight: 70,
                                        imageWidth: 60,
                                        boxFit: BoxFit.cover,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: Dimens.paddingSizeDefault),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: Dimens
                                                      .paddingSizeExtraSmall),
                                              child: Text(
                                                "@" +
                                                    feedList
                                                        .elementAt(index)
                                                        .username!,
                                                textAlign: TextAlign.start,
                                                style:
                                                    regularTextStyle.copyWith(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w600),
                                              ),
                                            ),
                                            Text(
                                              feedList
                                                  .elementAt(index)
                                                  .modifiedAt!,
                                              textAlign: TextAlign.start,
                                              style: regularTextStyle.copyWith(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: Dimens.marginSizeSmall),
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      Str.whatsNewToday.toUpperCase(),
                      style: regularTextStyle.copyWith(
                          fontWeight: FontWeight.w800,
                          fontSize: Dimens.textSizeDefault),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        itemCount: postList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(
                                bottom: Dimens.paddingSizeDefault),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: Dimens.paddingSizeSmall,
                                      horizontal: Dimens.paddingSizeSmall),
                                  width: MediaQuery.of(context).size.width,
                                  color: CustomColors.cardColor,
                                  child: Row(
                                    children: [
                                      CustomCircleImage(
                                        radius: 18,
                                        image:
                                            postList.elementAt(index).userPic!,
                                        imageHeight: 70,
                                        imageWidth: 60,
                                        boxFit: BoxFit.cover,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: Dimens.paddingSizeDefault),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: Dimens
                                                      .paddingSizeExtraSmall),
                                              child: Text(
                                                "@" +
                                                    postList
                                                        .elementAt(index)
                                                        .username!,
                                                textAlign: TextAlign.start,
                                                style:
                                                    regularTextStyle.copyWith(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w600),
                                              ),
                                            ),
                                            Text(
                                              postList
                                                  .elementAt(index)
                                                  .modifiedAt!,
                                              textAlign: TextAlign.start,
                                              style: regularTextStyle.copyWith(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                CustomCacheImage(
                                  imageHeight: Dimens.postHeight,
                                  imageWidth: MediaQuery.of(context).size.width,
                                  boxFit: BoxFit.cover,
                                  image: postList.elementAt(index).postImage!,
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
