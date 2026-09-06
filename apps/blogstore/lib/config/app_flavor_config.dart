import 'package:flutter/services.dart';
import 'package:domain/domain.dart';

class BlogStoreAppFlavorConfig {
  static AppFlavorConfig get current {
    final flavor = Flavor.fromString(appFlavor);
    return AppFlavorConfig(flavor: flavor, buildMode: BuildMode.current);
  }
}
