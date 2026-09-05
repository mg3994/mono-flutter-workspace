part of '../app_flavor_config.dart';

class _DevCfg extends AppFlavorConfig {
  const _DevCfg()
    : super._('https://api.dev.yourdomain.com', Flavor.development);
}

class _StgCfg extends AppFlavorConfig {
  const _StgCfg() : super._('https://api.stg.yourdomain.com', Flavor.staging);
}

class _ProdCfg extends AppFlavorConfig {
  const _ProdCfg()
    : super._('https://api.prod.yourdomain.com', Flavor.production);
}
