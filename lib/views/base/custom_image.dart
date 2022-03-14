import 'package:cached_network_image/cached_network_image.dart';
import 'package:code_blogs/utils/images.dart';
import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final double imageHeight;
  final double imageWidth;
  final BoxFit boxFit;
  final String image;

  const CustomImage(
      {Key? key,
      required this.imageHeight,
      required this.imageWidth,
      required this.boxFit,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: FadeInImage.assetNetwork(
        placeholder: Images.placeholder,
        image: image,
        height: imageHeight,
        width: imageWidth,
        fit: boxFit,
      ),
    );
  }
}

class CustomCacheImage extends StatelessWidget {
  final double imageHeight;
  final double imageWidth;
  final BoxFit boxFit;
  final String image;
  final String? placeholder;

  const CustomCacheImage({
    Key? key,
    required this.imageHeight,
    required this.imageWidth,
    required this.boxFit,
    required this.image,
    this.placeholder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: imageProvider,
              fit: boxFit,
              colorFilter:
                  const ColorFilter.mode(Colors.grey, BlendMode.colorBurn)),
        ),
      ),
      height: imageHeight,
      width: imageWidth,
      placeholder: (context, url) => Image.asset(
          placeholder ?? Images.placeholder,
          height: imageHeight,
          width: imageWidth,
          fit: boxFit),
      errorWidget: (context, url, error) => Image.asset(Images.placeholder,
          height: imageHeight, width: imageWidth, fit: boxFit),
    );
  }
}

class CustomCircleImage extends StatelessWidget {
  final double imageHeight;
  final double imageWidth;
  final BoxFit boxFit;
  final String image;
  final double radius;
  final String? placeholder;

  const CustomCircleImage({
    Key? key,
    required this.imageHeight,
    required this.imageWidth,
    required this.boxFit,
    required this.image,
    required this.radius,
    this.placeholder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      child: ClipOval(
        child: CustomCacheImage(
          placeholder: placeholder ?? Images.defaultUser,
          image: image,
          imageHeight: imageHeight,
          imageWidth: imageWidth,
          boxFit: boxFit,
        ),
      ),
    );
  }
}
