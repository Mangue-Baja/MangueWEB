abstract class HttpGateway {
  Future<Object> get([String? path, Map<String, String>? headers]);
  Future<Object> post(
      {String? path, required Object data, Map<String, String>? headers});
  Future<Object> put(
      {String? path, required Object data, Map<String, String>? headers});
  Future<Object> patch(
      {String? path, required Object data, Map<String, String>? headers});
  Future<Object> delete([String? path, Map<String, String>? headers]);
}
