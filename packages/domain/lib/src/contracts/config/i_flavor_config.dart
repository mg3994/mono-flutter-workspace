import 'i_build_mode.dart';
import 'i_flavor.dart';

/// Generic flavor configuration container.
final class FlavorConfig<F extends IFlavor, B extends IBuildMode> {
  const FlavorConfig({required this.flavor, required this.buildMode});

  final F flavor;
  final B buildMode;

  String get baseUrl => flavor.baseUrl;
}

/// Backwards compatibility interface alias for IFlavorConfig.
abstract interface class IFlavorConfig<
  F extends IFlavor,
  B extends IBuildMode
> {
  F get flavor;
  B get buildMode;
  String get baseUrl;
}
