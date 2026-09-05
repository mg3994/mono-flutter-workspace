import 'package:flutter/services.dart';
import 'package:domain/domain.dart';

class BlogStoreAppFlavorConfig {
  static FlavorConfig get current {
    final flavor = Flavor.fromString(appFlavor);
    return FlavorConfig(
      flavor: flavor,
      buildMode: BuildMode.current,
    );
  }
}
