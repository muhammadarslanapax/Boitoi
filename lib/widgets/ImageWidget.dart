import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImgAvatar extends StatelessWidget {
  final IconData icon;
  final Color bgcolor;
  final Color? iconcolor;
  final Function()? ontap;
  final double? radius;
  final double? size;
  const ImgAvatar({
    super.key,
    required this.icon,
    this.ontap,
    this.radius,
    this.size,
    required this.bgcolor,
    this.iconcolor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: ontap,
        child: CircleAvatar(
          backgroundColor: bgcolor,
          radius: radius,
          child: Icon(
            icon,
            size: size,
            color: iconcolor,
          ),
        ));
  }
}

class ImgAsset extends StatelessWidget {
  final String path;
  final Function()? ontap;
  final double width;
  final double height;
  final double? radius;
  const ImgAsset({
    super.key,
    required this.path,
    this.ontap,
    required this.width,
    required this.height,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(radius ?? 0),
          child: SizedBox(
            width: width,
            height: height,
            child: Image.asset(
              path,
              fit: BoxFit.cover,
            ),
          )),
    );
  }
}

class ImgNetwork extends StatelessWidget {
  final String url;
  final Function()? ontap;
  final double width;
  final double height;
  final double? radius;
  const ImgNetwork({
    super.key,
    required this.url,
    required this.width,
    required this.height,
    this.radius,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius ?? 0),
        child: Container(
            width: width, // Set width to 200
            height: height, // Set height to 200
            child: CachedNetworkImage(
              imageUrl: url,
              placeholder: (context, url) => Center(child: CircularProgressIndicator()), // Placeholder widget
              errorWidget: (context, url, error) => Icon(Icons.error), // Error widget
              fit: BoxFit.cover, // Set the fit (optional)
            )),
      ),
    );
  }
}
