import 'package:mangueweb/modules/application/gateway/http/dart/gateway.dart';
import 'package:mangueweb/modules/application/gateway/http/sse/gateway.dart';
import 'package:mangueweb/modules/infra/config/env/config.dart';

DartHttpGateway instanceOfDartHttpGateway([String? url]) {
  return DartHttpGateway(url ?? Environment.API_URL);
}

NativeServerSentEventsGateway instanceOfNativeServerSentEventsGateway(
    [String? url]) {
  return NativeServerSentEventsGateway(instanceOfDartHttpGateway(url));
}
