import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mangueweb/modules/domain/gateway/http.dart';
import 'package:mangueweb/modules/domain/gateway/sse.dart';
import 'package:http/http.dart' as http;

class NativeServerSentEventsGateway implements SSEGateway {
  final HttpGateway _engine;

  NativeServerSentEventsGateway(this._engine);

  @override
  Future<Stream<String>> subscribe([String? path]) async {
    final response = _engine.get(path, {
      'content-type': 'text/event-stream',
      'Accept': 'text/event-stream',
      'Connection': 'keep-alive',
      'Cache-Control': 'no-cache'
    }) as http.StreamedResponse;

    debugPrint(response.toString());

    if (response.statusCode != 200) {
      throw Exception('Failed to connect to the server');
    }

    final stream =
        response.stream.transform(utf8.decoder).transform(const LineSplitter());

    debugPrint(stream.toString());

    await for (final line in stream) {
      debugPrint(line);
    }

    return stream;
  }
}
