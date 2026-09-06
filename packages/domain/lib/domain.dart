/// Domain layer public contracts, entities, and usecases.
library domain;

import 'src/config/build_mode_interface.dart';
import 'src/config/flavor.dart';
import 'src/config/flavor_config.dart';
import 'src/config/flavor_interface.dart';

export 'src/failure.dart';
export 'src/app_exception.dart';
export 'src/result.dart';

export 'src/config/flavor_interface.dart';
export 'src/config/build_mode_interface.dart';
export 'src/config/flavor_config.dart';
export 'src/config/flavor.dart';

typedef AppFlavorConfig = FlavorConfig<Flavor, BuildMode>;

export 'src/entities/blogger_post.dart';
export 'src/entities/catalog_filter.dart';
export 'src/entities/service_area.dart';
export 'src/entities/store_product.dart';
export 'src/entities/user_location.dart';

export 'src/contracts/auth_repository.dart';
export 'src/contracts/catalog_repository.dart';

export 'src/usecases/get_catalog_products.dart';
