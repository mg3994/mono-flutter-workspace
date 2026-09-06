/// Abstract contract for environment flavors.
abstract interface class IFlavor {
  String get baseUrl;
  const IFlavor();
}

/// Backwards compatibility alias for FlavorInterface.
typedef FlavorInterface = IFlavor;
