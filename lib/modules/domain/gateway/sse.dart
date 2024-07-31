abstract class SSEGateway {
  Future<Stream<String>> subscribe([String? path]);
}
