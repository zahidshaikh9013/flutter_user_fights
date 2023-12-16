import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hamam_test/app/app_extensions.dart';
import 'package:hamam_test/app/app_theme.dart';
import 'package:hamam_test/app/context_ext.dart';
import 'package:hamam_test/widgets/text_widget.dart';

class CachedImage extends StatefulWidget {
  final String? imageUrl;
  final bool isRound;
  final double radius;
  final double? height;
  final double? width;

  final BoxFit fit;
  final String placeholder;
  final bool isLocal;
  final bool isPlaceholderOnly;

  final BorderRadius? borderRadius;
  final String? name;

  const CachedImage(
    this.imageUrl, {
    super.key,
    this.isRound = false,
    this.radius = 40.0,
    this.isLocal = false,
    this.height,
    this.width,
    this.fit = BoxFit.cover,
    this.placeholder = "",
    this.borderRadius,
    this.isPlaceholderOnly = false,
    this.name,
  });

  @override
  State<CachedImage> createState() => _CachedImageState();
}

class _CachedImageState extends State<CachedImage> {
  final String noImageAvailable = "https://www.esm.rochester.edu/uploads/NoPhotoAvailable.jpg";

  @override
  Widget build(BuildContext context) {
    Widget placeHolderWidget = LayoutBuilder(
      builder: (context, constraints) {
        var effectiveWidth = 40.0;
        var effectiveHeight = 40.0;

        if (widget.isRound) {
          effectiveWidth = widget.radius;
          effectiveWidth = widget.radius;
        } else {
          effectiveWidth = widget.width ?? constraints.maxWidth;
          effectiveHeight = widget.height ?? constraints.maxHeight;
        }

        if (effectiveWidth == double.infinity) {
          effectiveWidth = 40.0;
          effectiveWidth = constraints.maxWidth;
        }

        if (effectiveHeight == double.infinity) {
          effectiveHeight = 40.0;
          effectiveHeight = constraints.maxHeight;
        }

        return Container(
          width: effectiveWidth,
          height: effectiveHeight,
          decoration: BoxDecoration(
            color: kGreyColor1,
            shape: widget.isRound ? BoxShape.circle : BoxShape.rectangle,
            borderRadius: !widget.isRound ? widget.borderRadius ?? BorderRadius.circular(borderRadius10) : null,
          ),
          child: Center(
            child: widget.name == null
                ? const Icon(Icons.photo)
                : Texts(
                    widget.name,
                    style: context.titleMedium?.copyWith(color: kBlack),
                  ),
          ),
        );
      },
    );

    if (widget.isPlaceholderOnly) {
      return placeHolderWidget;
    }

    try {
      if (widget.isLocal) {
        return Container(
          height: widget.isRound ? widget.radius : widget.height,
          width: widget.isRound ? widget.radius : widget.width,
          decoration: BoxDecoration(
            shape: widget.isRound ? BoxShape.circle : BoxShape.rectangle,
            image: DecorationImage(
              image: AssetImage(widget.placeholder),
              fit: BoxFit.cover,
            ),
          ),
          child: ClipOval(
            child: Image.file(
              File(widget.imageUrl!),
              fit: widget.fit,
              height: widget.isRound ? widget.radius : widget.height,
              width: widget.isRound ? widget.radius : widget.width,
            ),
          ),
        );
      }

      if (widget.imageUrl == null || widget.imageUrl?.removeSpaces().isEmpty == true) {
        return ClipRRect(
          key: ValueKey(widget.imageUrl),
          borderRadius: widget.borderRadius ?? BorderRadius.circular(borderRadius10),
          child: placeHolderWidget,
        );
      }

      return ClipRRect(
        key: ValueKey(widget.imageUrl),
        borderRadius: widget.borderRadius ?? BorderRadius.circular(borderRadius10),
        child: CachedNetworkImage(
          imageUrl: widget.imageUrl ?? "",
          fit: widget.fit,
          height: widget.isRound ? widget.radius : widget.height,
          width: widget.isRound ? widget.radius : widget.width,
          fadeInDuration: const Duration(milliseconds: 200),
          placeholder: (context, url) => placeHolderWidget,
          errorWidget: (context, url, error) => placeHolderWidget,
        ),
      );
    } catch (e) {
      return ClipRRect(
        borderRadius:
            !widget.isRound ? widget.borderRadius ?? BorderRadius.circular(borderRadius10) : BorderRadius.zero,
        child: placeHolderWidget,
      );
    }
  }
}
