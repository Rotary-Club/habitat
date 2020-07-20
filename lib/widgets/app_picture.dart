import 'package:flutter/material.dart';
import 'package:habitat/themes/app_theme.dart';
import 'package:progressive_image/progressive_image.dart';

class AppPicture extends StatelessWidget {
  final String image;
  final String thumbnail;
  final String placeholder;
  final double blur;
  final double height;
  final double width;
  final BoxFit fit;
  final AlignmentGeometry alignment;
  final Duration fadeDuration;
  final bool isBorderRadius;
  final bool isCustomBorderRadius;
  final BorderRadius customeBorderRadius;

  AppPicture({
    @required this.image,
    this.thumbnail,
    this.placeholder: 'assets/images/default_thumbnail.png',
    this.blur,
    this.height: 180,
    this.width: 320,
    this.fit: BoxFit.cover,
    this.alignment: Alignment.center,
    this.fadeDuration: const Duration(milliseconds: 500),
    this.isBorderRadius: true,
    this.isCustomBorderRadius: false,
    this.customeBorderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: isCustomBorderRadius
          ? customeBorderRadius
          : isBorderRadius ? AppBorderRadius.small : BorderRadius.circular(0.0),
      child: ProgressiveImage(
        image: image != null ? NetworkImage(image) : AssetImage(placeholder),
        thumbnail: thumbnail != null
            ? NetworkImage(thumbnail)
            : AssetImage('assets/images/default_thumbnail.png'),
        placeholder: AssetImage(placeholder),
        blur: blur != null ? blur : thumbnail != null ? 20 : 0,
        height: height,
        width: width,
        fadeDuration: fadeDuration,
        fit: fit,
        alignment: alignment,
      ),
    );
  }
}
