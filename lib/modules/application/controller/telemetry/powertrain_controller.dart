import 'package:mangueweb/modules/domain/Entity/telemetry/powertrain.dart';
import 'package:mangueweb/modules/domain/service/telemetry/powertrain_service.dart';

class PowertrainController {

  final PowertrainService _service;

  PowertrainController(this._service);

  Future<List<Powertrain>> readPowertrainTelemetry() async {
    return await _service.readPowertrainTelemetry();
  }

}