// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart' as _lottie;

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bitcoin outline.png
  AssetGenImage get bitcoinOutline =>
      const AssetGenImage('assets/images/bitcoin outline.png');

  /// File path: assets/images/bitcoin.png
  AssetGenImage get bitcoin => const AssetGenImage('assets/images/bitcoin.png');

  /// File path: assets/images/clock fill.png
  AssetGenImage get clockFill =>
      const AssetGenImage('assets/images/clock fill.png');

  /// File path: assets/images/clock outline.png
  AssetGenImage get clockOutline =>
      const AssetGenImage('assets/images/clock outline.png');

  /// File path: assets/images/copy.png
  AssetGenImage get copy => const AssetGenImage('assets/images/copy.png');

  /// File path: assets/images/done.png
  AssetGenImage get done => const AssetGenImage('assets/images/done.png');

  /// File path: assets/images/edit.png
  AssetGenImage get edit => const AssetGenImage('assets/images/edit.png');

  /// File path: assets/images/email.png
  AssetGenImage get email => const AssetGenImage('assets/images/email.png');

  /// File path: assets/images/ethereum outline.png
  AssetGenImage get ethereumOutline =>
      const AssetGenImage('assets/images/ethereum outline.png');

  /// File path: assets/images/ethereum.png
  AssetGenImage get ethereum =>
      const AssetGenImage('assets/images/ethereum.png');

  /// File path: assets/images/exchange.png
  AssetGenImage get exchange =>
      const AssetGenImage('assets/images/exchange.png');

  /// File path: assets/images/face-id.png
  AssetGenImage get faceId => const AssetGenImage('assets/images/face-id.png');

  /// File path: assets/images/hide.png
  AssetGenImage get hide => const AssetGenImage('assets/images/hide.png');

  /// File path: assets/images/home fill.png
  AssetGenImage get homeFill =>
      const AssetGenImage('assets/images/home fill.png');

  /// File path: assets/images/home outline.png
  AssetGenImage get homeOutline =>
      const AssetGenImage('assets/images/home outline.png');

  /// File path: assets/images/incoming.png
  AssetGenImage get incoming =>
      const AssetGenImage('assets/images/incoming.png');

  /// File path: assets/images/outcoming.png
  AssetGenImage get outcoming =>
      const AssetGenImage('assets/images/outcoming.png');

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

  /// File path: assets/images/seed phrase .png
  AssetGenImage get seedPhrase =>
      const AssetGenImage('assets/images/seed phrase .png');

  /// File path: assets/images/send.png
  AssetGenImage get send => const AssetGenImage('assets/images/send.png');

  /// File path: assets/images/share.png
  AssetGenImage get share => const AssetGenImage('assets/images/share.png');

  /// File path: assets/images/solana outline.png
  AssetGenImage get solanaOutline =>
      const AssetGenImage('assets/images/solana outline.png');

  /// File path: assets/images/solana.png
  AssetGenImage get solana => const AssetGenImage('assets/images/solana.png');

  /// File path: assets/images/usdt outline.png
  AssetGenImage get usdtOutline =>
      const AssetGenImage('assets/images/usdt outline.png');

  /// File path: assets/images/view.png
  AssetGenImage get view => const AssetGenImage('assets/images/view.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    bitcoinOutline,
    bitcoin,
    clockFill,
    clockOutline,
    copy,
    done,
    edit,
    email,
    ethereumOutline,
    ethereum,
    exchange,
    faceId,
    hide,
    homeFill,
    homeOutline,
    incoming,
    outcoming,
    profileFill,
    profileOutline,
    receive,
    scan,
    seedPhrase,
    send,
    share,
    solanaOutline,
    solana,
    usdtOutline,
    view,
  ];
}

class $AssetsLottieGen {
  const $AssetsLottieGen();

  /// File path: assets/lottie/Loading Crypto App.json
  LottieGenImage get loadingCryptoApp =>
      const LottieGenImage('assets/lottie/Loading Crypto App.json');

  /// File path: assets/lottie/Success.json
  LottieGenImage get success =>
      const LottieGenImage('assets/lottie/Success.json');

  /// File path: assets/lottie/lock.json
  LottieGenImage get lock => const LottieGenImage('assets/lottie/lock.json');

  /// List of all assets
  List<LottieGenImage> get values => [loadingCryptoApp, success, lock];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLottieGen lottie = $AssetsLottieGen();
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

class LottieGenImage {
  const LottieGenImage(this._assetName, {this.flavors = const {}});

  final String _assetName;
  final Set<String> flavors;

  _lottie.LottieBuilder lottie({
    Animation<double>? controller,
    bool? animate,
    _lottie.FrameRate? frameRate,
    bool? repeat,
    bool? reverse,
    _lottie.LottieDelegates? delegates,
    _lottie.LottieOptions? options,
    void Function(_lottie.LottieComposition)? onLoaded,
    _lottie.LottieImageProviderFactory? imageProviderFactory,
    Key? key,
    AssetBundle? bundle,
    Widget Function(BuildContext, Widget, _lottie.LottieComposition?)?
    frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    double? width,
    double? height,
    BoxFit? fit,
    AlignmentGeometry? alignment,
    String? package,
    bool? addRepaintBoundary,
    FilterQuality? filterQuality,
    void Function(String)? onWarning,
    _lottie.LottieDecoder? decoder,
    _lottie.RenderCache? renderCache,
    bool? backgroundLoading,
  }) {
    return _lottie.Lottie.asset(
      _assetName,
      controller: controller,
      animate: animate,
      frameRate: frameRate,
      repeat: repeat,
      reverse: reverse,
      delegates: delegates,
      options: options,
      onLoaded: onLoaded,
      imageProviderFactory: imageProviderFactory,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      package: package,
      addRepaintBoundary: addRepaintBoundary,
      filterQuality: filterQuality,
      onWarning: onWarning,
      decoder: decoder,
      renderCache: renderCache,
      backgroundLoading: backgroundLoading,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
