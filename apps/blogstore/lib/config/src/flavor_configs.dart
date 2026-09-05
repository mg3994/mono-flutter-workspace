part of '../flavor.dart';

class _DevCfg extends FlavorConfig {
  const _DevCfg()
    : super._('https://api.dev.yourdomain.com', Flavor.development);
}

class _StgCfg extends FlavorConfig {
  const _StgCfg() : super._('https://api.stg.yourdomain.com', Flavor.staging);
}

class _ProdCfg extends FlavorConfig {
  const _ProdCfg()
    : super._('https://api.prod.yourdomain.com', Flavor.production);
}
