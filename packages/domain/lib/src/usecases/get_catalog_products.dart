import '../contracts/catalog_repository.dart';
import '../entities/store_product.dart';
import '../failure.dart';
import '../result.dart';

class GetCatalogProducts {
  final CatalogRepository _repository;

  GetCatalogProducts(this._repository);

  Future<Result<List<StoreProduct>>> execute() async {
    try {
      final products = await _repository.getProducts();
      return Result.success(products);
    } catch (e) {
      return const Result.failure(UnknownFailure());
    }
  }
}
