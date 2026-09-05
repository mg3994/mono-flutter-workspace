import 'package:flutter/foundation.dart';

enum Flavor {
  development(baseUrl: 'https://api.dev.yourdomain.com'),
  staging(baseUrl: 'https://api.stg.yourdomain.com'),
  production(baseUrl: 'https://api.prod.yourdomain.com');

  const Flavor({required this.baseUrl});

  final String baseUrl;

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

final class FlavorConfig {
  const FlavorConfig({required this.flavor, required this.buildMode});

  final Flavor flavor;
  final BuildMode buildMode;

  String get baseUrl => flavor.baseUrl;
}
