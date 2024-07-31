import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mangueweb/modules/application/gateway/http/factory.dart';
import 'package:mangueweb/modules/application/gateway/http/sse/abc.dart';

void main() {
  group("[SUIT] | GATEWAY: HTTP [DART]", () {
    test("[E2E] | SHOULD: GET [DATA] FROM [URL]", () async {
      final gateway = instanceOfDartHttpGateway("http://localhost:3000");
      final response = await gateway.get();

      expect(response.statusCode, 200);
      expect(response.body, "{\"data\":\"Hello World! :D\"}");
    });
  });
}
