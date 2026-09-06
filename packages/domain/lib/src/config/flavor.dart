import 'package:flutter/foundation.dart';
import 'build_mode_interface.dart';
import 'flavor_interface.dart';

enum BuildMode implements BuildModeInterface {
  debug,
  profile,
  release;

  static BuildMode get current {
    if (kDebugMode) {
      return BuildMode.debug;
    }

    if (kProfileMode) {
      return BuildMode.profile;
    }

    if (kReleaseMode) {
      return BuildMode.release;
    }

    throw UnimplementedError('Active environment build mode is unrecognized.');
  }
}

enum Flavor implements FlavorInterface {
  development(
    baseUrl: String.fromEnvironment(
      'DEV_BLOGGER_URL',
      defaultValue: 'https://api.dev.yourdomain.com',
    ),
  ),

  staging(
    baseUrl: String.fromEnvironment(
      'STG_BLOGGER_URL',
      defaultValue: 'https://api.stg.yourdomain.com',
    ),
  ),

  production(
    baseUrl: String.fromEnvironment(
      'PROD_BLOGGER_URL',
      defaultValue: 'https://api.prod.yourdomain.com',
    ),
  );

  const Flavor({required this.baseUrl});

  @override
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
