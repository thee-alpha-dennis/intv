import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../constants/app-images.dart';

class CustomImage extends StatefulWidget {
  CustomImage({
    required this.imageUrl,
    this.height = Vx.dp40,
    this.width,
    this.boxFit,
    Key? key,
  }) : super(key: key);

  final String imageUrl;
  final double? height;
  final double? width;
  final BoxFit? boxFit;


  @override
  State<CustomImage> createState() => _CustomImageState();
}

class _CustomImageState extends State<CustomImage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return CachedNetworkImage(
      imageUrl: widget.imageUrl,
      errorWidget: (context, imageUrl, _) => Image.asset(
        AppImages.noImage,
        fit: widget.boxFit ?? BoxFit.cover,
      ),
      fit: widget.boxFit ?? BoxFit.cover,
      progressIndicatorBuilder: (context, imageURL, progress) {
        return Image.asset(AppImages.placeholder);
      },
    )
        .h(widget.height ?? Vx.dp48)
        .w(widget.width ?? context.percentWidth);
  }

  @override
  bool get wantKeepAlive => true;
}
