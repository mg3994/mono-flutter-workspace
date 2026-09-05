import '../entities/store_product.dart';
import '../result.dart';

abstract class ICatalogRepository {
  Future<List<StoreProduct>> getProducts();
  Future<Result<StoreProduct>> getProductById(String id);
}
