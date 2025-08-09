// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bitcoin.png
  AssetGenImage get bitcoin => const AssetGenImage('assets/images/bitcoin.png');

  /// File path: assets/images/clock fill.png
  AssetGenImage get clockFill =>
      const AssetGenImage('assets/images/clock fill.png');

  /// File path: assets/images/clock outline.png
  AssetGenImage get clockOutline =>
      const AssetGenImage('assets/images/clock outline.png');

  /// File path: assets/images/ethereum.png
  AssetGenImage get ethereum =>
      const AssetGenImage('assets/images/ethereum.png');

  /// File path: assets/images/home fill.png
  AssetGenImage get homeFill =>
      const AssetGenImage('assets/images/home fill.png');

  /// File path: assets/images/home outline.png
  AssetGenImage get homeOutline =>
      const AssetGenImage('assets/images/home outline.png');

  /// File path: assets/images/profile fill.png
  AssetGenImage get profileFill =>
      const AssetGenImage('assets/images/profile fill.png');

  /// File path: assets/images/profile outline.png
  AssetGenImage get profileOutline =>
      const AssetGenImage('assets/images/profile outline.png');

  /// File path: assets/images/receive.png
  AssetGenImage get receive => const AssetGenImage('assets/images/receive.png');

  /// File path: assets/images/scan.png
  AssetGenImage get scan => const AssetGenImage('assets/images/scan.png');

  /// File path: assets/images/send.png
  AssetGenImage get send => const AssetGenImage('assets/images/send.png');

  /// File path: assets/images/solana.png
  AssetGenImage get solana => const AssetGenImage('assets/images/solana.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    bitcoin,
    clockFill,
    clockOutline,
    ethereum,
    homeFill,
    homeOutline,
    profileFill,
    profileOutline,
    receive,
    scan,
    send,
    solana,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
