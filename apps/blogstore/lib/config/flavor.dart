library;

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

part 'src/flavor_configs.dart';

enum Flavor {
  development,
  staging,
  production;

  static Flavor fromString(String? value) {
    return switch (value?.toLowerCase()) {
      'dev' || 'development' => Flavor.development,
      'stg' || 'staging' => Flavor.staging,
      'prod' || 'production' => Flavor.production,
      _ => Flavor.production,
    };
  }
}

enum BuildMode {
  debug,
  profile,
  release;

  static BuildMode get current {
    if (kDebugMode) return BuildMode.debug;
    if (kProfileMode) return BuildMode.profile;
    if (kReleaseMode) return BuildMode.release;
    throw UnimplementedError('Active environment build mode is unrecognized.');
  }
}

abstract interface class FlavorConfig {
  const FlavorConfig._(this.baseUrl, this.flavor);

  final String baseUrl;
  final Flavor flavor;

  factory FlavorConfig({String? flavorName = appFlavor}) {
    final flavor = Flavor.fromString(flavorName);
    return switch (flavor) {
      Flavor.development => const _DevCfg(),
      Flavor.staging => const _StgCfg(),
      Flavor.production => const _ProdCfg(),
    };
  }

  BuildMode get buildMode => BuildMode.current;
}
