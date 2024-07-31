import 'package:mangueweb/modules/application/gateway/telemetry/powertrain/powertrain_http_gateway.dart';
import 'package:mangueweb/modules/domain/Entity/telemetry/powertrain.dart';
import 'package:mangueweb/modules/domain/gateway/telemetry/powertrain_gateway.dart';
import 'package:mangueweb/modules/domain/use_case/telemetry/powertrain/read_powertrain_telemetry.dart';

class ReadPowertrainTelemetryByHttpUseCase extends ReadPowertrainTelemetryUseCase {

  final PowertrainGateway _gateway;

  ReadPowertrainTelemetryByHttpUseCase(this._gateway);

  @override
  Future<List<Powertrain>> execute() async {
    return await _gateway.getPowertrain();
  }

}