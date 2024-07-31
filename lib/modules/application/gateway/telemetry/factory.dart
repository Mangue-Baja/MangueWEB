import 'package:mangueweb/modules/application/gateway/http/dart/gateway.dart';
import 'package:mangueweb/modules/application/gateway/telemetry/powertrain/powertrain_http_gateway.dart';
import 'package:mangueweb/modules/domain/gateway/telemetry/powertrain_gateway.dart';

PowertrainGateway instaceOfPowertrainHttpGateway() {
  return PowertrainHttpGateway(DartHttpGateway("http://localhost:3000"));
}
