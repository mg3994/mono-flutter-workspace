import 'package:flutter/foundation.dart';

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
  const FlavorConfig._(this.flavor);

  final Flavor flavor;

  String get baseUrl => switch (flavor) {
    Flavor.development => 'https://api.dev.yourdomain.com',
    Flavor.staging => 'https://api.stg.yourdomain.com',
    Flavor.production => 'https://api.prod.yourdomain.com',
  };

  const factory FlavorConfig(Flavor flavor) = _FlavorConfig;

  BuildMode get buildMode => BuildMode.current;
}

final class _FlavorConfig extends FlavorConfig {
  const _FlavorConfig(super.flavor) : super._();
}
