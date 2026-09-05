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

/// Abstract domain contract for flavor configurations.
abstract interface class IFlavorConfig {
  String get baseUrl;
  Flavor get flavor;
  BuildMode get buildMode => BuildMode.current;
}
