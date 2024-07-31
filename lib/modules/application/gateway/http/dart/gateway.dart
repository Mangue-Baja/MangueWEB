import 'package:http/http.dart' as http;
import 'package:mangueweb/modules/domain/gateway/http.dart';

class DartHttpGateway implements HttpGateway {
  final String _url;

  DartHttpGateway(this._url);

  @override
  Future<http.Response> get(
      [String? path, Map<String, String>? headers]) async {
    return await http.get(Uri.parse("$_url/${path ?? ""}"), headers: headers);
  }

  @override
  Future<http.Response> post(
      {String? path,
      required Object data,
      Map<String, String>? headers}) async {
    return await http.post(Uri.parse("$_url/${path ?? ""}"),
        body: data, headers: headers);
  }

  @override
  Future<http.Response> put(
      {String? path,
      required Object data,
      Map<String, String>? headers}) async {
    return await http.put(Uri.parse("$_url/${path ?? ""}"),
        body: data, headers: headers);
  }

  @override
  Future<http.Response> patch(
      {String? path,
      required Object data,
      Map<String, String>? headers}) async {
    return await http.patch(
      Uri.parse("$_url/${path ?? ""}"),
      body: data,
      headers: headers,
    );
  }

  @override
  Future<http.Response> delete(
      [String? path, Map<String, String>? headers]) async {
    return await http.delete(Uri.parse("$_url/${path ?? ""}"),
        headers: headers);
  }
}
