/// Abstract domain contract for authentication capabilities.
abstract class IAuthContract {
  Future<bool> isAuthenticated();
}
