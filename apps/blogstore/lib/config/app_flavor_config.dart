import 'package:flutter/services.dart';
import 'package:domain/domain.dart';

part 'src/flavor_configs.dart';

abstract class AppFlavorConfig implements IFlavorConfig {
  @override
  final String baseUrl;

  @override
  final Flavor flavor;

  const AppFlavorConfig._(this.baseUrl, this.flavor);

  factory AppFlavorConfig({String? flavorName = appFlavor}) {
    final flavor = Flavor.fromString(flavorName);
    return switch (flavor) {
      Flavor.development => const _DevCfg(),
      Flavor.staging => const _StgCfg(),
      Flavor.production => const _ProdCfg(),
    };
  }

  @override
  BuildMode get buildMode => BuildMode.current;
}
